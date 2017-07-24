get '/' do
  @decks = Deck.all
  erb :index
end

get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params)
  if @user.save
    session[:user_id] = @user.id
    redirect '/'
  else
    status 422
    @errors = @user.errors.full_messages
    erb :'/users/new'
  end
end

get "/sessions/new" do
  erb :'/users/login'
end

post "/sessions" do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect "/"
  else
    status 400
    @errors = ["Oops! Was that the right login info? try again"]
    erb :"/users/login"
  end
end

get "/users/show" do
  if logged_in?
    "Welcome #{current_user.username}! Here are your stats!"
  else
    @error = ["You have to be logged in for that!"]
    erb :"/users/login"
  end

end

get "/logout" do
  session.delete(:user_id)
  redirect "/"
end

post "/game/:deck_id/show/:card_id" do
  card = Card.find_by(id: params[:card_id])
  #checking for wrong or right
  if params[:answer].chomp == card.answer
    @message = "correct!"
    Guess.create(card_id: card.id, round: current_round, correct?: 1)
  else
    @message = "wrong! The right answer is: '#{card.answer}"
    Guess.create(card_id: card.id, round: current_round, correct?: 0)
  end
  # preparing the next question
  guesses = Guess.where(round: current_round, correct?: 1)
  correct_cards = guesses.map { |guess| guess.card }
  all_cards = Card.where(deck_id: params[:deck_id])
  cards = all_cards - correct_cards
  if cards.empty?
    # do the math in guesses table to add final scores and save to db
    session.delete(:round_id)
    redirect "/whateverRouteThatGoesToThePlayersStatPage" # need to add that. 
  else
    @card = cards.sample
    erb :"game"
  end
end

get "/game/:deck_id/show" do
   
  @card = Card.where(deck_id: params[:deck_id]).shuffle.first
  if logged_in?
    if session[:round_id]
      round = Round.find_by(id: session[:round_id])
    else
      round = Round.create(user_id: current_user.id, deck_id: params[:deck_id])
      session[:round_id] = round.id
    end
  else
    if session[:round_id]
      round = Round.find_by(id: session[:round_id])
    else
      round = Round.create(deck_id: params[:deck_id])
      session[:round_id] = round.id
    end
  end
 
  erb :"game"
end









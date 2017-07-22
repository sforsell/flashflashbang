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
    session[:user_id] = user.id
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
  # this works
  if params[:answer].chomp == Card.find_by(id: params[:card_id]).answer
    @message = "correct!"
  else
    @message = "wrong!"
  end
  # this query is going to become hella more difficult as we need to also check the guesses table
  # to see if that cards has already been answered correctly and finally add a check to see if there's any
  # cards left that hasn't been answered correctly yet.
  #
  @card = Card.where(deck_id: params[:deck_id]).shuffle.first
  erb :"game"
end

get "/game/:deck_id/show" do
  # for now just make a new rounds object, not insert into table
  # because we don't want to clutter database (also need to change rounds table)
  # later we might still want to keep it an object until all cards have been answered
  # and then do the math in guesses table to add final scores and save to db
  # will probs need to store rounds_id in session so we keep track of what game is being played.
  if logged_in?
    @game = Round.new(user_id: current_user.id, deck_id: params[:deck_id])
  else
    @game = Round.new(deck_id: params[:deck_id])
  end
  @card = Card.where(deck_id: params[:deck_id]).shuffle.first
  erb :"game"
end









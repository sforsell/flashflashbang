get '/' do
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
    @errors = ["You have to be logged in for that!"]
    erb :"/users/login"
  end

end

get "/logout" do
  session.delete(:user_id)
  redirect "/"
end

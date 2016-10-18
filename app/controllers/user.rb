get '/' do
  erb :index
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect '/'
  else
    erb :'users/new'
  end
end

get '/users/:id' do
  @events = current_user.events
  erb :"users/show"
end


get '/login' do
  erb :'users/login'
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  if user.hashed_password == params[:user][:hashed_password]
    session[:user_id] = user.id
    redirect '/'
  else
    erb :'users/login'
  end
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

enable :sessions


#--------- Log in ------------
get '/login' do
  erb :"/user/login", layout: !request.xhr?
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  redirect '/login' if user.nil?

  valid = user.authenticate(params[:user][:password])

  if valid == false
    redirect '/login'
  else
    session[:user_id] = user.id
    redirect '/recipes'
  end
end

#--------- Register ------------
get '/register' do
  erb :"/user/register", layout: !request.xhr?
end

post '/register' do
  user = User.create(params[:user])
  session[:user_id] = user.id

  redirect '/'
end

#--------- Log out ------------
get '/logout' do
  session[:user_id] = ""

  redirect '/'
end

#--------- Profile ------------
# User should be able to edit their username.
get '/user/:id/profile' do
  @user = User.find(params[:id])

  erb :'/user/show'
end







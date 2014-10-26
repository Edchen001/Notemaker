get '/' do
  session[:user_id] = "" if session[:user_id].nil?
  redirect '/recipes'
end



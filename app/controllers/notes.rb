get '/notes' do
  @notes = Note.all.order(created_at: :desc)
  erb :index
end

get '/notes/new' do
  erb :'/notes/_create'
end

post '/notes/new' do
  Note.create(params[:note])
  redirect '/'
end

get '/notes/:id' do
  #do what we want with database
  @note = Note.find(params[:id])
  erb :'/notes/_show', :layout => false
end

delete '/notes/:id' do
  Note.find(params[:id]).destroy
  redirect '/'
end

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :'/notes/edit'
end

patch '/notes/:id' do
  @note = Note.find(params[:id])
  @note.update(params[:note])
  redirect '/'
end



#--------- Show all recipes ------------
get '/recipes' do
  @recipes = Recipe.all.order(created_at: :desc)
  erb :index
end

#--------- Create recipe ------------
get '/recipes/new' do

  erb :'/recipe/new'
end

post '/recipes/create' do
  recipe = Recipe.create(params[:recipe])
  recipe.user_id = session[:user_id]
  recipe.save
  redirect '/recipes'
end

#--------- Edit a specific recipe ------------
get '/recipes/:id/edit' do
  @recipe = Recipe.find(params[:id])

  erb :'/recipe/edit'
end

patch '/recipes/:id' do
  @recipe = Recipe.find(params[:id])
  @recipe.update(params[:recipe])
  @recipes = Recipe.all.order(created_at: :desc)
  erb :'/index'
end


#--------- Delete a specific recipe ------------
get '/recipes/:id/delete' do
  recipe = Recipe.find(params[:id])
  recipe.destroy
  redirect '/recipes'
end


#--------- Find a specific recipe ------------
get '/recipes/:id' do
  @recipe = Recipe.find(params[:id])

  erb :'/recipe/show'
end






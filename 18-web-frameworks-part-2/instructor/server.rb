require 'sinatra'
require_relative 'recipe'

get '/' do
  redirect to('/recipes')
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end

get '/legalese' do
  erb :legalese
end

get '/recipes' do
  @recipes = Recipe.all
  erb :recipes
end

get '/recipes/:id' do
  recipe_id = params[:id].to_i

  @recipe = Recipe.find(recipe_id)

  erb :recipe
end

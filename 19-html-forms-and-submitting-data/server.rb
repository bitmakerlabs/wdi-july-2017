require './film.rb'
require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

get '/films' do
  "GET request: #{params}"
end

post '/films' do
  Film.create({title: params[:title] , description: params[:synopsis],
               available: params[:available], country: params[:country], rating: params[:rating]})

  # don't do this
  # erb :index

  # do this instead
  redirect to('/')
end

put '/films' do
  "PUT request: #{params}"
end

delete '/films' do
  "DELETE request: #{params}"
end

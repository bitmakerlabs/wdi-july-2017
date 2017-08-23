require 'sinatra'

# ROUTE = Verb + URL

get '/' do
  redirect to('/hello')
end

get '/hello' do
  # send_file Must be the last line
  #send_file('views/hello.html')

  @current_time = Time.now
  @title = 'My To-Do List'

  @todo_list = [
    'Water the plants',
    'Go to the gym',
    'Make dinner',
    'Call girlfriend'
  ]

  erb(:hello)
end

get '/goodbye' do
  'Bye now...'
end

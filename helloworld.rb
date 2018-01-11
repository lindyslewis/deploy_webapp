#helloworld.rb

require 'sinatra'

get '/' do
    "Hello world!"
end

get '/goodbye' do 
    "Goodbye world!"
end



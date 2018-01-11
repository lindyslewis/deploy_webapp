#helloworld.rb

require 'sinatra'

get '/' do
    "Hello world!"
end

get '/goodbye' do 
    "Goodbye world!"
end

get '/about' do
    output = "<h2>Sinatra</h2>"
    output << "<p>This is my first Sinatra app.</p>"
    output
end

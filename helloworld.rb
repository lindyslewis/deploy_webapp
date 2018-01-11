#helloworld.rb

require 'sinatra'

get '/' do
    output = "Hello world!"
    output << "<br/>"
    output << "<a href=\"/goodbye\">Leave</a>"
    output
end

get '/goodbye' do 
    "Goodbye world!"
end

get '/form' do 
    form = '<form action="/form" method="post">'
    form << '<input type="submit" value="Submit" />'
    form << '</form>'
    form 
end

post '/form' do
     "Thank you for submitting the form."
end

get '/company/about' do
    output = "<h2>Sinatra</h2>"
    output << "<p>This is my first Sinatra app.</p>"
    output
end

#get /\A\/company\/[A-Za-z\-]+\Z/ do
#    "This route matches a Regex."
#end

get '/company/*' do
    "This route catches everything else."
end

get '/products/:id' do
    "Product ID is: #{params[:id]}"
end

#app.ru
require 'sinatra'

class HelloWorldApp < Sinatra::Base
  get '/' do 
    "hello world!"
  end
end

#app.ru
require 'sinatra'
require 'net/http'

set :bind, '0.0.0.0'

url =  'http://169.254.169.254/latest/meta-data/instance-id' 

uri = URI(url)
output = Net::HTTP.get(uri) # => String

get '/' do 
  "hello world from instance number: #{output} "
end

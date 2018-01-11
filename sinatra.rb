require 'sinatra'

# Default file paths
# set :root, File.dirname(__FILE__)
# set :public_folder, settings.root + "public"
# set :views, settings.root + "views"

get '/' do
    filepath = File.join(settings.public_folder, 'index.html')
    send_file(filepath)
end

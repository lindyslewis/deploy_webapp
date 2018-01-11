require 'sinatra'

# Default file paths
# set :root, File.dirname(__FILE__)
# set :public_folder, settings.root + "public"
# set :views, settings.root + "views"

get '/' do
    @page_title = "Welcome to Explore California"
    erb :index
end

get '/test' do
    template = "The current year is <%= Time.now.year %>."
    erb template
end

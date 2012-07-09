require "sinatra/base"
require "sinatra/content_for"
require "sinatra/reloader"
require "erubis"

class Lacie < Sinatra::Base
  helpers Sinatra::ContentFor
  
  enable :logging
  configure :development do
    enable :static
    register Sinatra::Reloader
  end
  
  get "/" do
    erb :index
  end
  
  not_found do
    
  end
  
  error do
    
  end
end
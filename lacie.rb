# coding: utf-8

require "sinatra/base"
require "sinatra/content_for"
require "sinatra/reloader"
require "rack-flash"
require "erubis"

class Lacie < Sinatra::Base
  helpers Sinatra::ContentFor
  
  enable :logging
  enable :sessions
  use Rack::Flash, sweep: true
  
  configure :development do
    enable :static
    register Sinatra::Reloader
  end
  
  get "/" do
    erb :index
  end
  
  not_found do
    flash[:error] = "No se encontró la página"
    redirect to("/")
  end
  
  error do
    flash[:error] = "Se ha producido un error"
    redirect to("/")
  end
end
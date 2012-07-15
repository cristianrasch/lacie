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
  
  get "/actividades/2012" do
    erb :"activities/2012"
  end
  
  get "/actividades/2011" do
    erb :"activities/2011"
  end
  
  get "/actividades/2010" do
    erb :"activities/2010"
  end
  
  get "/actividades/2009" do
    erb :"activities/2009"
  end
  
  get "/actividades/2008" do
    erb :"activities/2008"
  end
  
  get "/actividades/2007" do
    erb :"activities/2007"
  end
  
  get "/actividades/2005-2006" do
    erb :"activities/2005-2006"
  end
  
  get "/actividades" do
    erb :"activities/index"
  end
  
  get "/integrantes" do
    erb :staff
  end

  get "/instrumental/kits-de-desarrollo" do
    erb :"tools/kits"
  end
  
  get "/instrumental/maquinas-y-herramientas" do
    erb :"tools/machines"
  end
  
  get "/instrumental" do
    erb :"tools/index"
  end
  
  get "/publicaciones" do
    erb :publications
  end
  
  get "/reglamento" do
    erb :bylaws
  end
  
  get "/contacto" do
    erb :contact_us
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
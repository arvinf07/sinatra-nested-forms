require './environment'
require 'pry'


module FormsLab
  class App < Sinatra::Base
    get '/' do 
      erb :root
    end  

    get '/new' do
      erb :'pirates/new'
    end  

    post '/pirates' do 
      pirate = params[:pirate]
      @pirate = Pirate.new(pirate[:name], pirate[:weight], pirate[:height])
      pirate[:ships].each {|attr_hash| Ship.new(attr_hash)}
      @ships = Ship.all
      erb :'pirates/show'
    end  

  end
end

require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

   get '/' do
    erb :super_hero
  end
  
   post '/teams' do
      @team = Team.new(params[:hero])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      
    erb :team
    
  end

end

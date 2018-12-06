require './config/environment'

class App < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/create' do
    erb :create
  end

  post '/new_character' do
    @hero = Hero.new(params[:hero])

    params[:hero][:power].each do |power|
      Power.new(power)
    end

    @power = Power.all


    erb :new_character
  end
end

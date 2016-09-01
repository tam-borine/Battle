require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:user_name_one])
    $p2 = Player.new(params[:user_name_two])
    redirect '/play'
  end

  get '/play' do
    @user_name_one = $p1.name
    @user_name_two = $p2.name
    erb(:play)
  end

  get '/attack' do
    Game.new.attack($p2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

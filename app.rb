require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1 = Player.new(params[:user_name_one])
    p2 = Player.new(params[:user_name_two])
    $game = Game.new(p1, p2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.switch_turns
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

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

  post '/attack' do
    @game = $game
    @game.attack
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = $game
    erb (:attack)
  end

  get '/game_over' do
    @game = $game
    @winner = @game.winner.name
    erb (:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

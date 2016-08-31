require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @name1 = params[:user_name_one]
    @name2 = params[:user_name_two]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

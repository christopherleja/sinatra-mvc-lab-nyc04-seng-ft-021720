require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    erb :user_input
    piglatin = PigLatinizer.new(params[:pl])
    @piglatin = piglatin
  end
  
end
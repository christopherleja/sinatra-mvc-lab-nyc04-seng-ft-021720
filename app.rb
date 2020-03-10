require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input
  end
  
  post '/piglatinize' do
    erb :results
    piglatin = PigLatinizer.new(params[:pl])
    @piglatin = piglatin
  end
  
end
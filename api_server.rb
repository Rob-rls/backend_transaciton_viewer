require 'sinatra/base'


class APIServer < Sinatra::Base
  get '/' do
    'Hello APIServer!'
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end

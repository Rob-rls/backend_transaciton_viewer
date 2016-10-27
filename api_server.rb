require 'sinatra/base'
require 'json'
require './lib/response_generator'


class APIServer < Sinatra::Base

  before do
    @response_generator = ResponseGenerator.new
  end

  get '/' do
    response = @response_generator.response_message
    response.to_json
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

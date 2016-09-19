require 'sinatra'
require_relative 'app/unit/speed_unit.rb'
require_relative 'app/unit/weight_unit.rb'

class App < Sinatra::Base
  get '/' do
    "Hello World!"
  end

  get '/say/:verb' do
    "Olá #{params[:verb]}"
  end

  get '/:conversion_type/:origin_unit/:value/:destination_unit' do
    
    param[:origin_unit]
    param[:value]
    param[:destination_unit]

    "Você acessou :#{param[:conversion_type]}"
  end

end

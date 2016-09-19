require 'sinatra'
require_relative 'app/unit/speed_unit.rb'
require_relative 'app/unit/weight_unit.rb'

# definimos o charset da aplicacao
Encoding.default_external = Encoding::UTF_8

class App < Sinatra::Base
  get '/:conversion_type/:origin_unit/:value_care/:destination_unit' do
    
    #param[:origin_unit]
    #param[:value]
    #param[:destination_unit]

    "Você acessou: #{params[:conversion_type]}"
  end

end

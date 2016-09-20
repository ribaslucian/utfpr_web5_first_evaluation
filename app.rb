require 'sinatra'
require_relative 'lib/unit'

# definimos o charset da aplicacao
Encoding.default_external = Encoding::UTF_8

class App < Sinatra::Base
  get '/:conversion_type/:origin_unit/:value_care/:destination_unit' do

    # verificamos se o :conversion_type é válido
    if (['velocity', 'weight'].include? params[:conversion_type])
    end

    #param[:origin_unit]
    #param[:value]
    #param[:destination_unit]

    "Você acessou: #{params[:conversion_type]}"
  end

end

require 'sinatra'
require_relative 'lib/unit'
#require_relative 'test/test_helper'

# definimos o charset da aplicacao
Encoding.default_external = Encoding::UTF_8

class App < Sinatra::Base
  get '/say' do
    "#{Unit::Speed.debug} | #{Unit::Weight.debug}"
  end

  get '/:conversion_type/:origin_unit/:value_care/:destination_unit' do
    #param[:origin_unit]
    #param[:value]
    #param[:destination_unit]

    "Você acessou: #{params[:conversion_type]}"
  end

end

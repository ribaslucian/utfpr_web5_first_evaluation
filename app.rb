require 'json'
require 'sinatra'
require_relative 'lib/unit'
# require_relative 'lib/string'

# definimos o charset da aplicacao
Encoding.default_external = Encoding::UTF_8

# docs
class App < Sinatra::Base
  get '/:conversion_type/:origin_unit/:value/:destination_unit' do

    # verificamos se o :conversion_type e uma Metrica valida
    unless (Unit.is?(params[:conversion_type]))
      halt 4031
    end

    # verificamos se o Valor inserido e uma letra
    unless (Unit.numeric?(params[:value]))
      halt 4032
    end

    # obtemos uma Instancia da metrica requirida
    metrics = Unit.get_instance params

    # verificamos se a unidade Origem e correspondentes a metrica requirida
    unless (metrics.is_unit(params[:origin_unit]))
      halt 4033
    end

    # verificamos se a unidade Destino e correspondentes a metrica requirida
    unless (metrics.is_unit(params[:destination_unit]))
      halt 4034
    end

    # convertemos o valor para numero
    params[:value] = params[:value].to_f

    "> #{params[:value]}"
  end
end

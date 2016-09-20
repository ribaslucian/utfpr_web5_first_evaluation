require 'json'
require 'sinatra'
require_relative 'lib/unit'
# require_relative 'lib/string'


# definimos o charset da aplicacao
Encoding.default_external = Encoding::UTF_8

class App < Sinatra::Base
  get '/:conversion_type/:origin_unit/:value/:destination_unit' do

    # 1 verificamos se o :conversion_type é válido
    unless (Unit.is?(params[:conversion_type]))
      halt 4031
    end

    # 2 verificamos se o valor inserido eh uma letra
    unless (Unit.numeric?(params[:value]))
      halt 4032
    end

    # 3 obtemos uma instancia da metrica requirida
    metrics = Unit.get_instance params

    # 4 verificamos se a unidade Origem eh correspondentes a metrica requirida
    unless (metrics.is_unit(params[:origin_unit]))
      halt 4033
    end

    # 5 verificamos se a unidade Destino eh correspondentes a metrica requirida
    unless (metrics.is_unit(params[:destination_unit]))
      halt 4034
    end

    # convertemos o valor para numero
    params[:value] = params[:value].to_f

    "> #{params[:value]}"
  end

end

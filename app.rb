require 'json'
require 'sinatra'
require_relative 'lib/unit'
require_relative 'lib/string'

# definimos o charset da aplicacao
Encoding.default_external = Encoding::UTF_8

# docs
class App < Sinatra::Base
  # constantes que definem os erros HTTP
  # INVALID_METRIC = 4031
  # INVALID_VALUE = 4032
  # INVALID_ORIGIN_UNIT = 4033
  # INVALID_ORIGIN_DESTINY = 4034

  get '/:conversion_type/:origin_unit/:value/:destination_unit' do
    # verificamos se o :conversion_type e uma Metrica valida
    halt 4031 unless Unit.is? params[:conversion_type]

    # verificamos se o Valor inserido e uma letra
    halt 4032 unless params[:value].numeric?

    # obtemos uma Instancia da metrica requirida
    metrics = Unit.get_instance params[:conversion_type]

    # verificamos se a unidade Origem e correspondentes a metrica requirida
    halt 4033 unless metrics.unit? params[:origin_unit]

    # verificamos se a unidade Destino e correspondentes a metrica requirida
    halt 4034 unless metrics.unit? params[:destination_unit]

    # definimos o nome do Metodo que sera utilizado para a conversao
    method = "#{params[:origin_unit]}_to_#{params[:destination_unit]}"

    # referenciamos o metodo de conversao e informamos o Valor
    metrics = metrics.method(method).call(params[:value].to_f)

    metrics.to_s
  end
end

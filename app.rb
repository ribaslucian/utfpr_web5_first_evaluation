require 'json'
require 'sinatra'
require_relative 'lib/unit'
require_relative 'lib/string'

# definimos o charset da aplicacao
Encoding.default_external = Encoding::UTF_8

# docs
class App < Sinatra::Base
  get '/:conversion_type/:origin_unit/:value/:destination_unit' do
    # verificamos se o :conversion_type e uma Metrica valida
    halt 404 unless Unit.is? params[:conversion_type]

    # verificamos se o Valor inserido e uma letra
    halt 403 unless params[:value].numeric?

    # obtemos uma Instancia da metrica requirida
    metrics = Unit.get_instance params[:conversion_type]

    # verificamos se a unidade Origem e correspondentes a metrica requirida
    halt 403 unless metrics.unit? params[:origin_unit]

    # verificamos se a unidade Destino e correspondentes a metrica requirida
    halt 403 unless metrics.unit? params[:destination_unit]

    # definimos o nome do Metodo que sera utilizado para a conversao
    method = "#{params[:origin_unit]}_to_#{params[:destination_unit]}"

    # referenciamos o metodo de conversao e informamos o Valor
    metrics = metrics.method(method).call(params[:value].to_f)

    metrics.to_s
  end

  # tratamos acesso a URLs invalidas
  get '*' do
    halt 404, 'invalid page'
  end
end

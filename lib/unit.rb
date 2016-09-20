# docs
class Unit
  # definimos as unidades basicas de uma metrica
  @units = []
  @base_unit
  @value

  attr_reader :units, :base_unit

  # verifica se eh uma metrica valida
  def self.is?(metric)
    %w(velocity weight).include?(metric)
  end

  # obtem a instance de um metrica a partir dos parametros da url
  def self.get_instance(params)
    metrics = Object.const_get(params[:conversion_type].capitalize.to_s)
    metrics.new params[:origin_unit],
                params[:value],
                params[:destination_unit]
  end

  # method de iniciar basico para uma metrica
  def initialize(value)
    @value = value
  end

  # verifica se uma unidade especificamente corresponde a metricas de velocidade
  def unit?(unit)
    @units.include?(unit)
  end

  # para nao precisar escrever metodos repetidos, vamos
  # responder a algumas chamadas sem metodos magicamente
  # atraves desse metodo
  def method_missing(method)
    metrics = method.to_s.split '_to_'

    # se as metricas de origin forem iguais retornamos o valor
    if (metrics[0] == metrics[1])
      return @value
    end

    # primeiro convertemos a unidade para metro

    puts "method missing say: #{@value}"
  end

  # apresenta os valores da classe em formato string
  def debug
    "origin: #{@unit_origin} | value: #{@value} | destiny: #{@unit_destiny}"
  end
end

require_relative 'unit/velocity.rb'
require_relative 'unit/weight.rb'

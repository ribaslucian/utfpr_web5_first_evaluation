# docs
class Unit
  # definimos as unidades basicas de uma metrica
  @units = []
  @base_unit = ''

  attr_reader :units, :base_unit

  # verifica se eh uma metrica valida
  def self.is?(metric)
    %w(velocity weight).include?(metric)
  end

  # obtem a instance de um metrica a partir dos parametros da url
  def self.get_instance(metric)
    Object.const_get(metric.capitalize.to_s).new
  end

  # verifica se uma unidade especificamente corresponde a metricas de velocidade
  def unit?(unit)
    @units.include?(unit)
  end

  # para nao precisar escrever metodos repetidos, vamos
  # responder a algumas chamadas sem metodos magicamente
  # atraves desse metodo
  def method_missing(method, *argments)
    # defimos o valor e metricas da conversao
    metrics = method.to_s.split '_to_'
    value = argments.first

    # se as metricas de origin forem iguais retornamos o valor
    return value if metrics[0] == metrics[1]

    # primeiro convertemos a unidade para o valor base
    value = self.method("#{metrics[0]}_to_#{@base_unit}").call value

    # agora convertemos a unidade base para a unidade destino
    self.method("#{@base_unit}_to_#{metrics[1]}").call value
  end

  # substimos este metodo para que o ruby nao bloqueie
  # a chamada de metodos nao existes atraves do metodo .method
  def respond_to_missing?(_name, _include_private = false)
    'nil'
  end

  # apresenta os valores da classe em formato string
  def debug
    "origin: #{@unit_origin} | value: #{@value} | destiny: #{@unit_destiny}"
  end
end

require_relative 'unit/velocity.rb'
require_relative 'unit/weight.rb'

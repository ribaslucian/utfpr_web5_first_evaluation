# docs
class Unit
  # definimos as unidades basicas de uma metrica
  @units = ['default']

  # verifica se eh uma metrica valida
  def self.is?(metric)
    ['velocity', 'weight'].include?(metric)
  end

  # obtem a instance de um metrica a partir dos parametros da url
  def self.get_instance(params)
    metrics = Object.const_get("#{params[:conversion_type].capitalize}")
    metrics = metrics.new(params[:origin_unit], params[:value], params[:destination_unit])
  end

  # verifica se uma string eh um valor metrico valido
  def self.numeric?(string)
    Float(string) != nil rescue false
  end

  # method de inicilizao basico para uma metrica
  def initialize(unit_origin, value, unit_destiny)
    @unit_origin, @value, @unit_destiny = unit_origin, value, unit_destiny
  end

  # verifica se uma unidade especificamente corresponde a metricas de velocidade
  def is_unit(unit)
    @units.include?(unit)
  end

  # obtem as unidades de metricas da metrica atual
  def get_units
    @units
  end

  def debug
    "origin: #{@unit_origin} | value: #{@value} | destiny: #{@unit_destiny}"
  end
end

require_relative 'unit/velocity.rb'
require_relative 'unit/weight.rb'

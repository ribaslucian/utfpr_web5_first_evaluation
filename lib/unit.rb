# docs
class Unit
  # definimos as unidades basicas de uma metrica
  @units = []
  attr_reader :units

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

  # method de inicilizao basico para uma metrica
  def initialize(unit_origin, value, unit_destiny)
    @unit_origin = unit_origin
    @value = value
    @unit_destiny = unit_destiny
  end

  # verifica se uma unidade especificamente corresponde a metricas de velocidade
  def unit?(unit)
    @units.include?(unit)
  end

  def debug
    "origin: #{@unit_origin} | value: #{@value} | destiny: #{@unit_destiny}"
  end
end

require_relative 'unit/velocity.rb'
require_relative 'unit/weight.rb'

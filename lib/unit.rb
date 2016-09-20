module Unit
  def self.is?(metric)
    ['velocity', 'weight'].include?(metric)
  end

  def self.get_instance(params)
    metrics = Object.const_get("Unit::#{params[:conversion_type].capitalize}")
    metrics = metrics.new(params[:origin_unit], params[:value], params[:destination_unit])
  end

  def self.numeric?(string)
    Float(string) != nil rescue false
  end
end

require_relative 'unit/velocity.rb'
require_relative 'unit/weight.rb'

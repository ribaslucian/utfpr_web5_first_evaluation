class Unit::Velocity
  def initialize(unit_origin, value, unit_destiny)
    @unit_origin, @value, @unit_destiny = unit_origin, value, unit_destiny
  end

  def debug
    "origin: #{@unit_origin} | value: #{@value} | destiny: #{@unit_destiny}"
  end

  # verifica se as unidades e valores sao validos para uma metrica de velocidade
  def check_units
    self.is_unit(@unit_origin) && self.is_unit(@unit_destiny)
  end

  # verifica se uma unidade especificamente corresponde a metricas de velocidade
  def is_unit(unit)
    ['meter', 'kilometer', 'mile', 'feet', 'knotted'].include? unit
  end
end
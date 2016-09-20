# docs
class Velocity < Unit
  def initialize(value)
    super
    # metro, quilometro, milha, pes, nos
    @units = %w(meter kilometer mile feet knotted)
    @base_unit = 'meter'
  end

  # convercoes de metro para as unidades
  def meter_to_kilometer
    @value / 1000.0
  end

  def meter_to_mile
    @value * 0.00062137
  end

  def meter_to_feet
    @value * 3.2808
  end

  def meter_to_knotted
    @value / 1852.0
  end

  # convercoes das unidades para metro
  def kilometer_to_meter
    @value * 1000.0
  end

  def mile_to_meter
    @value / 0.00062137
  end

  def feet_to_meter
    @value / 3.2808
  end

  def knotted_to_meter
    @value * 1852.0
  end
end

# docs
class Weight < Unit
  def initialize
    super
    # grama, quilograma, tonelada, libra, oncas, quilate
    @units = %w(grass kilogram tonne lb jaguar carat)
    @base_unit = 'grass'
  end

  # convercoes de metro para as unidades
  def grass_to_kilogram(value)
    value / 1000.0
  end

  def grass_to_tonne(value)
    value / 1_000_000.0
  end

  def grass_to_lb(value)
    value * 0.0022046
  end

  def grass_to_jaguar(value)
    value * 0.035274
  end

  def grass_to_carat(value)
    value * 5.0
  end

  # convercoes das unidades para metro
  def kilogram_to_grass(value)
    value * 1000.0
  end

  def tonne_to_grass(value)
    value * 1_000_000.0
  end

  def lb_to_grass(value)
    value / 0.0022046
  end

  def jaguar_to_grass(value)
    value / 0.035274
  end

  def quilate_to_grass(value)
    value / 5.0
  end
end

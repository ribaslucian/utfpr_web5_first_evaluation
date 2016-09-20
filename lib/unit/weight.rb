# docs
class Weight < Unit
  def initialize(value)
    super
    # grama, quilograma, tonelada, libra, oncas, quilate
    @units = %w(grass kilogram tonne lb jaguar carat)
    @base_unit = 'grass'
  end

  # convercoes de metro para as unidades
  def grass_to_kilogram(value)
  end

  def grass_to_tonne(value)
  end

  def grass_to_lb(value)
  end

  def grass_to_jaguar(value)
  end

  def grass_to_carat(value)
  end

  # convercoes das unidades para metro
  def kilogram_to_grass(value)
  end

  def tonne_to_grass(value)
  end

  def lb_to_grass(value)
  end

  def jaguar_to_grass(value)
  end

  def quilate_to_grass(value)
  end
end

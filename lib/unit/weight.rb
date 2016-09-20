# docs
class Weight < Unit
  def initialize(unit_origin, value, unit_destiny)
    super
    # grama, quilograma, tonelada, libra, oncas, quilate
    @units = %w(grass kilogram tonne lb jaguar carat)
  end
end

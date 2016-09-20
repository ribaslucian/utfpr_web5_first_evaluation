# docs
class Velocity < Unit
  def initialize(unit_origin, value, unit_destiny)
    super
    # metro, quilometro, milha, pes, nos
    @units = %w(meter kilometer mile feet knotted)
  end
end

# docs
class Weight < Unit
  def initialize(unit_origin, value, unit_destiny)
    super
    # grama, quilograma, tonelada, libra, onça, quilate
    @units = ['grass', 'kilogram', 'tonne', 'lb', 'jaguar', 'carat']
  end
end

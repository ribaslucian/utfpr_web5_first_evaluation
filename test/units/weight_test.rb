require_relative '../test_helper'
require_relative '../../lib/unit/weight'

# docs
class WeightTest < Minitest::Test
  def test_grass_to_grass
    v = Weight.new
    assert_equal 1, v.grass_to_grass(1)
  end

  def test_tonne_to_tonne
    v = Weight.new
    assert_equal 1, v.tonne_to_tonne(1)
  end

  def test_lb_to_lb
    v = Weight.new
    assert_equal 1, v.lb_to_lb(1)
  end

  def test_jaguar_to_jaguar
    v = Weight.new
    assert_equal 1, v.jaguar_to_jaguar(1)
  end

  def test_kilogram_to_kilogram
    v = Weight.new
    assert_equal 1, v.kilogram_to_kilogram(1)
  end

  def test_quilate_to_quilate
    v = Weight.new
    assert_equal 1, v.quilate_to_quilate(1)
  end
end

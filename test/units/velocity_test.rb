require_relative '../test_helper'
require_relative '../../lib/unit/velocity'

# docs
class VelocityTest < Minitest::Test
  def test_meter_to_meter
    v = Velocity.new
    assert_equal 1, v.meter_to_meter(1)
  end

  def test_kilometer_to_kilometer
    v = Velocity.new
    assert_equal 1, v.kilometer_to_kilometer(1)
  end

  def test_mile_to_mile
    v = Velocity.new
    assert_equal 1, v.mile_to_mile(1)
  end

  def test_knotted_to_knotted
    v = Velocity.new
    assert_equal 1, v.knotted_to_knotted(1)
  end
end

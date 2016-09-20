require_relative '../test_helper'

# docs
module Functional
  module Velocity
    class Test < TestHelper
      def test_functional_velocity_default
        assert_equal 1, 1
      end
    end
  end
end

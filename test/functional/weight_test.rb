require_relative '../test_helper'

# docs
module Functional
  module Weight
    class Test < TestHelper
      def test_functional_weith_default
        assert_equal 1, 1
      end
    end
  end
end

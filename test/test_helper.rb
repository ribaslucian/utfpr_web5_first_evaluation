# requirimos a gem para verificar a cobertura dos tests
require 'simplecov'
SimpleCov.start

# requirimos a gem minitest que efetuara os tests
require 'minitest/autorun'
require 'minitest/pride'

class TestHelper < Minitest::Test
  def test_helper_default
    assert_equal 1, 1
  end
end

# criamos os namespaces basicos do testes
module Functional
  module Speed; end
  module Weight; end
end

module Unit
  module Speed; end
  module Weight; end
end

# querimos os testes da aplicacao

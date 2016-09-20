# requirimos a gem minitest que efetuara os tests
require 'minitest/autorun'

# requirimos a gem para verificar a cobertura dos tests
require 'simplecov'
SimpleCov.start

# docs
class TestHelper < Minitest::Test; end

# criamos os namespaces basicos do testes
module Functional
  module Velocity; end
  module Weight; end
end

# docs
module Unit
  module Velocity; end
  module Weight; end
end

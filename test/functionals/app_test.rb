require_relative '../test_helper'

# docs
class AppTest < Minitest::Test
  def test_get_invalid_metric_metric1
    assert_equal 1, 1
  end

  def test_get_invalid_metric_metric1
    assert_equal 1, 2
  end

  # testando duas Metricas Invalidas
  # def test_get_invalid_metric_metric1
  #   get '/metric1/param1/param2/param3'
  #   assert_equal 4031, last_response.status
  # end

  # def test_invalid_metric_metric2
  #   get '/metric2/param1/param2/param3'
  #   assert_equal INVALID_METRIC, last_response.status
  # end

  # # testando as duas Metricas Validas
  # def test_velocity_metric
  #   get '/velocity/meter/1/meter'
  #   assert_equal 200, last_response.status
  # end

  # def test_weight_metric
  #   get '/weight/grass/1/grass'
  #   assert_equal 200, last_response.status
  # end

  # # testando valores Invalidos para as duas Metricas
  # def test_invalid_velocity_value
  #   get '/velocity/meter/letter/meter'
  #   assert_equal INVALID_VALUE, last_response.status
  # end

  # def test_invalid_weight_value
  #   get '/weight/grass/letter/grass'
  #   assert_equal INVALID_VALUE, last_response.status
  # end
end

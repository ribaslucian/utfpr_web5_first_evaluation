require_relative '../test_helper'

# docs
class AppTest < Minitest::Test
  def app
    App
  end

  # url valida e invalida
  def test_get_invalid_url1
    get '/param0/param1/param2/param3/param4'
    assert_equal 404, last_response.status
  end

  def test_get_invalid_url2
    get '/param0'
    assert_equal 404, last_response.status
  end

  # testando duas Metricas Invalidas
  def test_get_invalid_metric_metric1
    get '/metric1/param1/param2/param3'
    assert_equal 404, last_response.status
  end

  def test_invalid_metric_metric2
    get '/metric2/param1/param2/param3'
    assert_equal 404, last_response.status
  end

  # testando as duas Metricas Validas
  def test_velocity_metric
    get '/velocity/meter/1/meter'
    assert_equal 200, last_response.status
  end

  def test_weight_metric
    get '/weight/grass/1/grass'
    assert_equal 200, last_response.status
  end

  # testando valores Invalidos para as duas Metricas
  def test_invalid_velocity_value
    get '/velocity/meter/letter/meter'
    assert_equal 403, last_response.status
  end

  def test_invalid_weight_value
    get '/weight/grass/letter/grass'
    assert_equal 403, last_response.status
  end

  # testando valores para unidades de Origin Invalidas
  def test_invalid_velocity_origin_unit
    get '/velocity/invalid_origin/1/meter'
    assert_equal 403, last_response.status
  end

  def test_invalid_weight_origin_unit
    get '/weight/invalid_origin/2/grass'
    assert_equal 403, last_response.status
  end

  # testando valores para unidades de Destino Invalidas
  def test_invalid_velocity_destiny_unit
    get '/velocity/meter/1/invalid_destiny'
    assert_equal 403, last_response.status
  end

  def test_invalid_weight_destiny_unit
    get '/weight/grass/2/invalid_destiny'
    assert_equal 403, last_response.status
  end
end

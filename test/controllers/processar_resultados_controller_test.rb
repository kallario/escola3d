require 'test_helper'

class ProcessarResultadosControllerTest < ActionDispatch::IntegrationTest
  test "should get validar" do
    get processar_resultados_validar_url
    assert_response :success
  end

  test "should get processar" do
    get processar_resultados_processar_url
    assert_response :success
  end

end

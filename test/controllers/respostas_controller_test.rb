require 'test_helper'

class RespostasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resposta = respostas(:one)
  end

  test "should get index" do
    get respostas_url
    assert_response :success
  end

  test "should get new" do
    get new_resposta_url
    assert_response :success
  end

  test "should create resposta" do
    assert_difference('Resposta.count') do
      post respostas_url, params: { resposta: { grupo_id: @resposta.grupo_id, peso: @resposta.peso, resposta: @resposta.resposta } }
    end

    assert_redirected_to resposta_url(Resposta.last)
  end

  test "should show resposta" do
    get resposta_url(@resposta)
    assert_response :success
  end

  test "should get edit" do
    get edit_resposta_url(@resposta)
    assert_response :success
  end

  test "should update resposta" do
    patch resposta_url(@resposta), params: { resposta: { grupo_id: @resposta.grupo_id, peso: @resposta.peso, resposta: @resposta.resposta } }
    assert_redirected_to resposta_url(@resposta)
  end

  test "should destroy resposta" do
    assert_difference('Resposta.count', -1) do
      delete resposta_url(@resposta)
    end

    assert_redirected_to respostas_url
  end
end

require 'test_helper'

class DonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dom = dons(:one)
  end

  test "should get index" do
    get dons_url
    assert_response :success
  end

  test "should get new" do
    get new_dom_url
    assert_response :success
  end

  test "should create dom" do
    assert_difference('Dom.count') do
      post dons_url, params: { dom: { nome_dom: @dom.nome_dom } }
    end

    assert_redirected_to dom_url(Dom.last)
  end

  test "should show dom" do
    get dom_url(@dom)
    assert_response :success
  end

  test "should get edit" do
    get edit_dom_url(@dom)
    assert_response :success
  end

  test "should update dom" do
    patch dom_url(@dom), params: { dom: { nome_dom: @dom.nome_dom } }
    assert_redirected_to dom_url(@dom)
  end

  test "should destroy dom" do
    assert_difference('Dom.count', -1) do
      delete dom_url(@dom)
    end

    assert_redirected_to dons_url
  end
end

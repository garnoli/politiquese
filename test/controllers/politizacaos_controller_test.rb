require 'test_helper'

class PolitizacaosControllerTest < ActionController::TestCase
  setup do
    @politizacao = politizacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:politizacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create politizacao" do
    assert_difference('Politizacao.count') do
      post :create, politizacao: { body: @politizacao.body, title: @politizacao.title }
    end

    assert_redirected_to politizacao_path(assigns(:politizacao))
  end

  test "should show politizacao" do
    get :show, id: @politizacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @politizacao
    assert_response :success
  end

  test "should update politizacao" do
    patch :update, id: @politizacao, politizacao: { body: @politizacao.body, title: @politizacao.title }
    assert_redirected_to politizacao_path(assigns(:politizacao))
  end

  test "should destroy politizacao" do
    assert_difference('Politizacao.count', -1) do
      delete :destroy, id: @politizacao
    end

    assert_redirected_to politizacaos_path
  end
end

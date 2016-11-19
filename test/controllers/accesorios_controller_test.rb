require 'test_helper'

class AccesoriosControllerTest < ActionController::TestCase
  setup do
    @accesorio = accesorios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accesorios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accesorio" do
    assert_difference('Accesorio.count') do
      post :create, accesorio: { availability: @accesorio.availability, cost: @accesorio.cost, description: @accesorio.description, name: @accesorio.name, picture: @accesorio.picture }
    end

    assert_redirected_to accesorio_path(assigns(:accesorio))
  end

  test "should show accesorio" do
    get :show, id: @accesorio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accesorio
    assert_response :success
  end

  test "should update accesorio" do
    patch :update, id: @accesorio, accesorio: { availability: @accesorio.availability, cost: @accesorio.cost, description: @accesorio.description, name: @accesorio.name, picture: @accesorio.picture }
    assert_redirected_to accesorio_path(assigns(:accesorio))
  end

  test "should destroy accesorio" do
    assert_difference('Accesorio.count', -1) do
      delete :destroy, id: @accesorio
    end

    assert_redirected_to accesorios_path
  end
end

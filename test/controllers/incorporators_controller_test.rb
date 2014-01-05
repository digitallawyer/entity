require 'test_helper'

class IncorporatorsControllerTest < ActionController::TestCase
  setup do
    @incorporator = incorporators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:incorporators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create incorporator" do
    assert_difference('Incorporator.count') do
      post :create, incorporator: { address_line_1: @incorporator.address_line_1, address_line_2: @incorporator.address_line_2, city: @incorporator.city, country: @incorporator.country, name: @incorporator.name, postal_code: @incorporator.postal_code, state: @incorporator.state }
    end

    assert_redirected_to incorporator_path(assigns(:incorporator))
  end

  test "should show incorporator" do
    get :show, id: @incorporator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @incorporator
    assert_response :success
  end

  test "should update incorporator" do
    patch :update, id: @incorporator, incorporator: { address_line_1: @incorporator.address_line_1, address_line_2: @incorporator.address_line_2, city: @incorporator.city, country: @incorporator.country, name: @incorporator.name, postal_code: @incorporator.postal_code, state: @incorporator.state }
    assert_redirected_to incorporator_path(assigns(:incorporator))
  end

  test "should destroy incorporator" do
    assert_difference('Incorporator.count', -1) do
      delete :destroy, id: @incorporator
    end

    assert_redirected_to incorporators_path
  end
end

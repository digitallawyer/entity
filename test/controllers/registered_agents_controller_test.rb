require 'test_helper'

class RegisteredAgentsControllerTest < ActionController::TestCase
  setup do
    @registered_agent = registered_agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registered_agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registered_agent" do
    assert_difference('RegisteredAgent.count') do
      post :create, registered_agent: { address_line_1: @registered_agent.address_line_1, address_line_2: @registered_agent.address_line_2, city: @registered_agent.city, country: @registered_agent.country, name: @registered_agent.name, postal_code: @registered_agent.postal_code, state: @registered_agent.state }
    end

    assert_redirected_to registered_agent_path(assigns(:registered_agent))
  end

  test "should show registered_agent" do
    get :show, id: @registered_agent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registered_agent
    assert_response :success
  end

  test "should update registered_agent" do
    patch :update, id: @registered_agent, registered_agent: { address_line_1: @registered_agent.address_line_1, address_line_2: @registered_agent.address_line_2, city: @registered_agent.city, country: @registered_agent.country, name: @registered_agent.name, postal_code: @registered_agent.postal_code, state: @registered_agent.state }
    assert_redirected_to registered_agent_path(assigns(:registered_agent))
  end

  test "should destroy registered_agent" do
    assert_difference('RegisteredAgent.count', -1) do
      delete :destroy, id: @registered_agent
    end

    assert_redirected_to registered_agents_path
  end
end

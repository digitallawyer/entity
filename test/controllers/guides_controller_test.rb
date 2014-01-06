require 'test_helper'

class GuidesControllerTest < ActionController::TestCase
  test "should get corporation" do
    get :corporation
    assert_response :success
  end

end

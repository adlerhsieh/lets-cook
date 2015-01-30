require 'test_helper'

class DishControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

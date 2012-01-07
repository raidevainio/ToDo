require 'test_helper'

class TodoListControllerTest < ActionController::TestCase
  test "should get list" do
    get :list
    assert_response :success
  end

end

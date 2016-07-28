require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get songs" do
    get :songs
    assert_response :success
  end

end

require 'test_helper'

class ShejiyanjiuControllerTest < ActionController::TestCase
  test "should get jiajujichanpin" do
    get :jiajujichanpin
    assert_response :success
  end

end

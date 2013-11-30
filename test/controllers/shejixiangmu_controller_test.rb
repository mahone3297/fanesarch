require 'test_helper'

class ShejixiangmuControllerTest < ActionController::TestCase
  test "should get juzhudichan" do
    get :juzhudichan
    assert_response :success
  end

end

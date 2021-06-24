require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get adminpage" do
    get admin_adminpage_url
    assert_response :success
  end
end

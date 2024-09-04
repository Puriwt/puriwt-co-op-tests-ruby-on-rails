require "test_helper"

class RegistationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registation_index_url
    assert_response :success
  end
end

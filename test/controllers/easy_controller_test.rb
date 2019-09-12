require 'test_helper'

class EasyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get easy_index_url
    assert_response :success
  end

end

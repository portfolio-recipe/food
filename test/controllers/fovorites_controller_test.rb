require 'test_helper'

class FovoritesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fovorites_index_url
    assert_response :success
  end

end

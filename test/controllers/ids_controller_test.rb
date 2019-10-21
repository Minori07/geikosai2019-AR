require 'test_helper'

class IdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ids_index_url
    assert_response :success
  end

  test "should get new" do
    get ids_new_url
    assert_response :success
  end

end

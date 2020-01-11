require 'test_helper'

class ArticesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artices_index_url
    assert_response :success
  end

  test "should get show" do
    get artices_show_url
    assert_response :success
  end

end

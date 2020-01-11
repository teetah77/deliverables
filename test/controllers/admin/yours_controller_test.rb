require 'test_helper'

class Admin::YoursControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_yours_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_yours_edit_url
    assert_response :success
  end

  test "should get show" do
    get admin_yours_show_url
    assert_response :success
  end

  test "should get index" do
    get admin_yours_index_url
    assert_response :success
  end

end

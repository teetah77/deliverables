require 'test_helper'

class Admin::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get admin_articles_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_articles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_articles_destroy_url
    assert_response :success
  end

end

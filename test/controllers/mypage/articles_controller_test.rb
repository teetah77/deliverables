require 'test_helper'

class Mypage::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mypage_articles_index_url
    assert_response :success
  end

  test "should get new" do
    get mypage_articles_new_url
    assert_response :success
  end

  test "should get create" do
    get mypage_articles_create_url
    assert_response :success
  end

  test "should get destroy" do
    get mypage_articles_destroy_url
    assert_response :success
  end

end

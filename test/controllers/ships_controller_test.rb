require 'test_helper'

class ShipsControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get ships_feed_url
    assert_response :success
  end

  test "should get personal" do
    get ships_personal_url
    assert_response :success
  end

  test "should get edit" do
    get ships_edit_url
    assert_response :success
  end

end

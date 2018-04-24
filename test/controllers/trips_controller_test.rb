require 'test_helper'

class TripsControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get trips_feed_url
    assert_response :success
  end

  test "should get personal" do
    get trips_personal_url
    assert_response :success
  end

  test "should get edit" do
    get trips_edit_url
    assert_response :success
  end

end

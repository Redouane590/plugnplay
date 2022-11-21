require "test_helper"

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get bookings_new_url
    assert_response :success
  end

  test "should get edit" do
    get bookings_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get bookings_destroy_url
    assert_response :success
  end
end

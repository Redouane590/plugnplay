require "test_helper"

class ToysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get toys_index_url
    assert_response :success
  end

  test "should get new" do
    get toys_new_url
    assert_response :success
  end

  test "should get edit" do
    get toys_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get toys_destroy_url
    assert_response :success
  end
end

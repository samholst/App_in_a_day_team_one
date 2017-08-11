require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get calendar" do
    get pages_calendar_url
    assert_response :success
  end

  test "should get reservation" do
    get pages_reservation_url
    assert_response :success
  end

end

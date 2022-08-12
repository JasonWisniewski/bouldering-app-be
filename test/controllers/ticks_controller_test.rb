require "test_helper"

class TicksControllerTest < ActionDispatch::IntegrationTest
  test "should get problems" do
    get ticks_problems_url
    assert_response :success
  end

  test "should get areas" do
    get ticks_areas_url
    assert_response :success
  end
end

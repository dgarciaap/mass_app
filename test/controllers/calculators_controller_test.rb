require 'test_helper'

class CalculatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get measure" do
    get calculators_measure_url
    assert_response :success
  end

end

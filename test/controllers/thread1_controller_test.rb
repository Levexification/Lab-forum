require 'test_helper'

class Thread1ControllerTest < ActionDispatch::IntegrationTest
  test "should get thread1" do
    get thread1_thread1_url
    assert_response :success
  end

end

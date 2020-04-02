require 'test_helper'

class Lb9ControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get lb9_input_url
    assert_response :success
  end

  test 'should get view' do
    get lb9_view_url
    assert_response :success
  end
end

require 'test_helper'
#
class Lb8ControllerTest < ActionDispatch::IntegrationTest
  test 'should get enter' do
    get lb8_enter_url
    assert_response :success
  end

  test 'should get result' do
    get lb8_result_url
    assert_response :success
  end

  test 'for <0' do
    get '/lb8/result', params: { val: '-1' }
    assert_equal assigns[:result], 'Ошибка в введенном числе'
  end

  test 'for 2002' do
    get '/lb8/result', params: { val: '2002' }
    assert_equal assigns[:mas], [0, 1001, 1010, 1100, 2002]
  end
end

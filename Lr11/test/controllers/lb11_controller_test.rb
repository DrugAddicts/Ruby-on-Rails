require 'test_helper'

class Lb11ControllerTest < ActionDispatch::IntegrationTest
  test 'should get input' do
    get lb11_input_url
    assert_response :success
  end

  test 'should get output' do
    get lb11_output_url
    assert_response :success
  end

  test 'should get' do
    i = 1004
    get lb11_output_url, params: { val: i }
    assert_equal(assigns[:result].last, 1001)
  end

  test 'should get different' do
    get lb11_output_url, params: { val: 20 }
    a = assigns[:result]

    get lb11_output_url, params: { val: 100_000 }
    b = assigns[:result]

    assert_not_equal(a, b)
  end

  test 'should get 1' do
    i = 1023
    get lb11_output_url, params: { val: i }
    assert_equal(assigns[:result].last, 1010)
  end

  test 'should get 2' do
    i = 1001
    get lb11_output_url, params: { val: i }
    assert_equal(assigns[:result].last, 1001)
  end

  test 'should get 5' do
    i = 2002
    get lb11_output_url, params: { val: i }
    assert_equal(assigns[:result].last, 2002)
  end

  test 'should get 7' do
    i = 3003
    get lb11_output_url, params: { val: i }
    assert_equal(assigns[:result].last, 3003)
  end
  test 'should get 8' do
    i = 5000
    get lb11_output_url, params: { val: i }
    assert_equal(assigns[:result].last, 4400)
  end
end

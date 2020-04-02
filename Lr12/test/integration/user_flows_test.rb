require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  test 'registration and calculation'do
    get root_path
    assert_redirected_to controller: 'sessions', action: 'login'

    follow_redirect!

    get login_path
    assert_response :success

    post sessions_create_path, params: { name: 'login', password: '123', password_confirmation: '123'}
    assert_redirected_to controller: 'lab', action: 'input'

    follow_redirect!
    get lab_output_path, params: { v1: '1002'}

    assert_equal(assigns[:mas].last, 1001)
  end

  test 'should not get to calculate without login'do
    get root_path
    assert_redirected_to controller: 'sessions', action: 'login'

    get lab_input_path
    assert_redirected_to controller: 'sessions', action: 'login'

    get lab_output_path, params: { v1: '54353' }
    assert_redirected_to controller: 'sessions', action: 'login'
  end

  test 'registration and walk'do
    get root_path
    assert_redirected_to controller: 'sessions', action: 'login'

    follow_redirect!

    get login_path
    assert_response :success

    post sessions_create_path, params: { name: 'login', password: '123', password_confirmation: '123'}
    assert_redirected_to controller: 'lab', action: 'input'

    follow_redirect!
    get lab_output_path, params: { v1:'1001'}
    assert_response :success

    get users_edit_path
    assert_response :success

    get users_new_path
    assert_response :success

    get users_show_path
    assert_response :success

  end
end

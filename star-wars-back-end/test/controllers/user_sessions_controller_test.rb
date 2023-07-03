require "test_helper"

class UserSessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_session = user_sessions(:one)
  end

  test "should get index" do
    get user_sessions_url, as: :json
    assert_response :success
  end

  test "should create user_session" do
    assert_difference("UserSession.count") do
      post user_sessions_url, params: { user_session: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show user_session" do
    get user_session_url(@user_session), as: :json
    assert_response :success
  end

  test "should update user_session" do
    patch user_session_url(@user_session), params: { user_session: {  } }, as: :json
    assert_response :success
  end

  test "should destroy user_session" do
    assert_difference("UserSession.count", -1) do
      delete user_session_url(@user_session), as: :json
    end

    assert_response :no_content
  end
end

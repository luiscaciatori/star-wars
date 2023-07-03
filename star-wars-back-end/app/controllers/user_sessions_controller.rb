class UserSessionsController < ApplicationController
  protect_from_forgery with: :null_session

  # POST /user_sessions
  # POST /user_sessions.json
  def create
    @user = User.find_by!(username: user_params[:username])

    if @user && @user.authenticate(user_params[:password])
      token = encode_token({user_id: @user.id})

      p decode_token(token)

      render json: {status: 200, token: token, username: @user.username}
    else
      render json: {status: 401, message: "not authorized"}
    end
  end

  # DELETE /user_sessions/1
  # DELETE /user_sessions/1.json
  def destroy

  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {})
    end
end

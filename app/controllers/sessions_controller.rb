class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token, raise: false

  def create
    user = User.find_by(username: params[:username])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user, status: :created
    else
      render json: { errors: ["Invalid Username or Password"] }, status: :unauthorized
    end
  end

  def destroy
    if session[:user_id]
      reset_session
      head :no_content
    else
      render json: { errors: ["Invalid Username or Password"] }, status: :unauthorized
    end
  end

end
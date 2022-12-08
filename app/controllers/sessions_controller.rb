class SessionsController < ApplicationController
    def create_session 
        # @user = user.authenticate(params[:email], params[:password])
        # if @user
        #     session[:user_id] = @user.id 
        #     json_response(@user)
        # else
        #     json_response({message: "Wrong Email or Password. Try Again"})
        # end
        user = User.find_by(email: params[:email])
        if (user&.authenticate(params[:password]))
            session[:user] = user.id
            render json: user, status: :created
        else
            render json: {error: "User not found"}, status: :unauthorized
        end
    end

    def destroy 
        session[:user_id] = nil
        json_response({message: "Successfully logged out!"})
    end
end
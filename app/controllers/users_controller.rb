class UsersController < ApplicationController
    #create users and validate params
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end
   #update users and validate params
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            render json: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end
    #delete users
    def destroy
        @user = User.find(params[:id])
        @user.destroy
    end
    private
    # Only allow a trusted parameter "white list" through.
    def user_params
        params.require(:user).permit(:name, :email :username, :password_digest, :password_confirmation)
    end
end

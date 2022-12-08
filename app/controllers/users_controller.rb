class UsersController < ApplicationController
    before_action :authenticate, except: [:index, :show, :create]
    def index 
        user = User.all
        #json_response(@user) 
        render json:user
    end

    def show
        user = User.find(params[:id])
        # json_response(@user)
        render json: user        
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        # json_response(@user, status = 201)
        render json: user, status: :created

    end

    def update
        @user = user.find(params[:id])
        @user.update(user_params)
        json_response(@user, status = 200)
    end

    def destroy
        @user = user.find(params[:id])
        @user.destroy
        json_response({message: "#{@user.name} deleted successfuly"}, status= 204)
    end

    
    private


    def user_params
        params.permit(:name, :email,:username, :password)
    end
end
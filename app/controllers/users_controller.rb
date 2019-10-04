class UsersController < ApplicationController

    def new 
        @user = User.new
    end 

    def create 
        @user = User.new(user_params)

        if @user.save 
            render :json, { user: @user, message: "Success" }
        else 
            render json: { errors: @user.errors.full_messages }, status: 422
        end 
    end 

    private 

    def user_params 
        params.permit(
            :name, 
            :email, 
            :username, 
            :password)
    end 
end

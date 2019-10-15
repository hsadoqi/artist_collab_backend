class UsersController < ApplicationController

    def show 
        set_user
    end 

    def create 
        @user = User.new(user_params)

        if @user.save 
            render json: { user: @user, message: "Success" }
        else 
            render json: { errors: @user.errors.full_messages }, status: 422
        end 
    end 

    private 

    def set_user 
        @user = User.find_by_id(params[:id])
        render json: { user: @user )
    end 

    def user_params 
        params.require(:user).permit(
            :name, 
            :email, 
            :username, 
            :password)
    end 

end

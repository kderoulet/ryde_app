class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to new_ryde_path
        else
            render :new
        end
    end
    def show
        @user = User.find_by(email: current_user.email)
    end

    def edit
    end

    def update
        if current_user.update_attributes(user_params)
            redirect_to user_path
        else
            render :edit
        end
    end


    private 
    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :image, :password, :password_confirmation)
    end
end
class UsersController < ApplicationController
    before_action :authorize, except: [:new, :create]
    before_action :authorize_pilot, only: [:new]
    before_action :authorize_ryder, only: [:new]
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if params[:pilot]
            @user.pilot = true
        end
        if @user.save
            session[:user_id] = @user.id
            if @user.pilot
                redirect_to rydes_path
            else 
                redirect_to new_ryde_path
            end
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
        params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation, :image, :pilot )
    end
end
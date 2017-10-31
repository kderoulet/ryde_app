class SessionsController < ApplicationController
    def index
    end
    
    def new
    end

    def create 
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to new_ryde_path
        else
            flash.now.alert = 'Invalid Login'
            render :new
        end
    end
    def destroy
        session[:user_id] = nil
        redirect_to root_path
    end
end
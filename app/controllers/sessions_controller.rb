class SessionsController < ApplicationController
    def index
    end
    
    def new
    end

    def create 
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            if user.pilot
                unless Ryde.where(pilot_id: current_user.id).order("created_at DESC").first.finished
                    redirect_to user_path(id: current_user.id)
                else
                    redirect_to rydes_path
                end
            else
                unless Ryde.where(user_id: current_user.id).order("created_at DESC").first.finished
                    redirect_to rydes_path
                else
                    redirect_to new_ryde_path
                end
            end
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
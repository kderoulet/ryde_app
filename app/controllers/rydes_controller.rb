class RydesController < ApplicationController
    def index
        @rydes = Ryde.all
    end

    def new
        @ryde = Ryde.new
    end

    def create 
        @ryde = Ryde.new(ryde_params)
        @ryde.user_id = current_user.id
        if @ryde.save
            redirect_to rydes_path
        else
            render :new
        end
    end

    def show
    end

    def edit
        @ryde = Ryde.find(params[:id])
    end
    
    def update
        @ryde = Ryde.find(params[:id])
        if @ryde.update_attributes(ryde_params)
            redirect_to user_path
        else
            render :edit
        end
    end

private
    def ryde_params
        params.require(:ryde).permit(:starting_location, :ending_location)
    end
end

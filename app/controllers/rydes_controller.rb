class RydesController < ApplicationController
    before_action :authorize
    before_action :authorize_pilot, only: [:show]
    before_action :authorize_ryder, only: [:edit, :new]
    before_action :no_more_rydes, only: [:new]
    def index
        @rydes = Ryde.all.order("created_at DESC")
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
        @ryde = Ryde.find(params[:id])
    end

    def edit
        @ryde = Ryde.find(params[:id])
    end
    
    def update
        @ryde = Ryde.find(params[:id])
        if @ryde.update_attributes(ryde_params)
            redirect_to rydes_path
        else
            render :edit
        end
    end

    def destroy
        @ryde = Ryde.find(params[:id]).destroy
        redirect_to rydes_path
    end

    def active 
    end

    def add
        @ryde = Ryde.find(params[:id])
        if @ryde.update_attributes(pilot_id: current_user.id)
            redirect_to user_path
        else
            render
        end
    end

    def finish
        @ryde = Ryde.where(pilot_id: current_user.id).order("created_at DESC").first
        if @ryde.update_attributes(finished: true)
            redirect_to user_path
        else
            render
        end
    end

private
    def ryde_params
        params.require(:ryde).permit(:starting_location, :ending_location, :pilot_id)
    end
end

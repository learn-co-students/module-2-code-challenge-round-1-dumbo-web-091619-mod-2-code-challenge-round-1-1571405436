class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end 

    def create
        @appearance = Appearance.create(a_params)
        if @appearance.valid?
            redirect_to guest_path(@appearance.guest)
        else
            redirect_to new_appearance_path
        end 
    end 

    private

    def a_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end 
end

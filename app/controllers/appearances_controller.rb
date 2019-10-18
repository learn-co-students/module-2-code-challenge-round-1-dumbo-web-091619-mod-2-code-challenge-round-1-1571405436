class AppearancesController < ApplicationController

    def new 
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all
    end

    def create 
        @appearance = Appearance.create(appearance_params)

        redirect_to @appearance.episode
    end

    private

    def appearance_params 
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
    end

end

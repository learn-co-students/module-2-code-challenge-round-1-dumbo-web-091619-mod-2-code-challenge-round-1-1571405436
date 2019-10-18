class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
        @guests = Guest.all 
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.create(app_params)
        redirect_to @appearance.episode
    end

    private

    def app_params
        params.require(:appearance).permit(:rating, :episode_id, :guest_id)
    end
end

class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all
    end

    def show
        @appearance = Appearance.find(params[:id])
    end

    def new
        @episodes = Episode.all
        @appearance = Appearance.new
    end

    def create
        
        # @episode = Episode.find(param[:id])
        @appearance = Appearance.create(ap_params)
        # redirect_to episode_path(ap_params[:episode_id])
        # redirect_to episode_path(@appearance.Episode.id)
        redirect_to episode_path(@appearance.episode.id) #not sure why this wont work!
        # redirect_to episode_path(@appearance[:ap_params.:episode_id])
    end

    private

    def ap_params
        params.require(:appearance).permit(:guest_id,:episode_id,:rating)
    end
end

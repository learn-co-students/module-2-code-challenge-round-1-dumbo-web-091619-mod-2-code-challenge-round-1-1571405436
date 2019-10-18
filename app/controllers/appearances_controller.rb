class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new

    end

    def create
        appearance = Appearance.create(params.require(:appearance).premit(:guest_id, :episode_id, :rating))
        redirect_to episode_path
    end

end

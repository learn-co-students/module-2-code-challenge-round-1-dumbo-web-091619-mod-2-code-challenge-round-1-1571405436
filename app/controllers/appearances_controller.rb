class AppearancesController < ApplicationController


    def new
        @appear = Appearance.new
        @guests = Guest.all
        @episodes = Episode.all
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            redirect_to episode_path(@appearance.episode)
        else
            flash[:error] = @item.full_messages
            redirect_to appearance_path
        end

    end

    def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)

    end
end

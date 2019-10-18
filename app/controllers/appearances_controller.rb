class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.create(appearance_params)
        if @appearance.valid?
            flash[:notice] = "Appearance successfully created"
            redirect_to @appearance.episode
        else
            flash[:error] = @appearance.errors.full_messages
            redirect_to new_appearance_path
        end
        
    end

    def appearance_params
        params.require(:appearance).permit(:guest_id, :episode_id, :rating)
    end
end

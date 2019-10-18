class AppearancesController < ApplicationController

        def new
          @appearance = Appearance.new
          @guests = Guest.all
          @episodes = Episode.all
        end
      
        def create
          @appearance = Appearance.create(appearance_params)
          if @appearance.valid?
            flash[:notice] = "Guest created"
      
            redirect_to guest_path(appearance_params[:guest_id])
          else
            flash[:errors] = @appearance.errors.full_messages
                        redirect_to new_appearance_path
          end
        end
      
        private
      
        def appearance_params
          params.require(:appearance).permit(:rating, :guest_id, :episode_id)
        end
    


end

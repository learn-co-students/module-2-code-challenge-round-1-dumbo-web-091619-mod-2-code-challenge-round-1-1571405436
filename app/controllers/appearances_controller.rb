class AppearancesController < ApplicationController

	def index
		all_appearances
	end

	def new
		@appearance = Appearance.new
	end

	def create
		@appearance = Appearance.create(appearance_params)

		if @appearance.valid?
			@episode = Episode.find(params[:appearance][:episode_id])
			flash[:errors] = []
			redirect_to episode_path(@episode)
		else
			flash[:errors] = @appearance.errors.full_messages
			redirect_to new_appearance_path
		end
	end

private

	def all_appearances
		@appearances = Appearance.all
	end

	def appearance_params
		params.require(:appearance).permit(:guest_rating, :guest_id, :episode_id)
	end

end

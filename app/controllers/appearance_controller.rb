class AppearanceController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    # byebug

    @appearance = Appearance.new(appearance_params)
    if @appearance.valid?
        @appearance.save
        redirect_to episode_path(@appearance.episode_id)
    else
        redirect_to new_appearance_path
    end

  end

  private
    def appearance_params
      params.require(:appearance).permit(:episode_id, :guest_id, :rating)
    end

end

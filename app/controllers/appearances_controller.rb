class AppearancesController < ApplicationController

  def new
    @guests = Guest.all
    @episodes = Episode.all
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(app_params)
    if @appearance.valid?
      redirect_to episode_path(@appearance.episode.id)
    else
      flash[:error] = "Rating should be in the range of 1 to 5"
      redirect_to new_appearance_path
    end
  end

  private

  def app_params
    params.required(:appearance).permit(:raiting, :guest_id, :episode_id)
  end
end

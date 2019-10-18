class AppearancesController < ApplicationController
  def index
    @appearances = Appearance.all
  end


  def new
      @appearance = Appearance.new
      @guest = Guest.find(params[:guest_id])
      @episode = Episode.find(params[:episode_id])
  end


  def create
    @appearance = Appearance.create(appearance_params)

    if @appearance.valid?
      flash[:notice] = "Appearance created"
      redirect_to episode_path(appearance_params[:episode_id])
    else
      flash[:errors] = @appearance.errors.full_messages
      redirect_to new_appearance_path
    end
  end


  def show
    @appearance = Appearance.find(params[:id])
  end


  private
  def appearance_params
    params.require(:appearance).permit(:guest_rating, :guest_id, :episode_id)
  end
end

class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end 

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.create(e_params)
    if @episode.valid?
      redirect_to @episode
    else
      flash[:errors] = @episode.errors.full_messages
      redirect_to new_episode_path
    end 
  end

  def destroy
    @episode = Episode.find(params[:id])
    @episode.destroy
    flash[:delete] = "Episode Deleted"
    redirect_to episodes_path
  end 

  private

  def e_params
    params.require(:episode).permit(:date, :number)
  end 
  
end

class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end 

  def create
    @episode = Episode.create(params[:id])
  end

  def show
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.update(params[:id])
  end 


  # private

  # def episode_params
  # params.require(:episode).permit(:date, :number)
  # end 
  

end

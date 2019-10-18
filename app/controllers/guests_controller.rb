class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.find(params[:id])

  end

  def show
    @guest = Guest.find(params[:id])
    @episodes = @guest.episodes
  end


end

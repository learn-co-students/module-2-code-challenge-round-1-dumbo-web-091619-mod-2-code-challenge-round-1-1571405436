class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show
    @list = 0
    @guest = Guest.find(params[:id])
  end
end

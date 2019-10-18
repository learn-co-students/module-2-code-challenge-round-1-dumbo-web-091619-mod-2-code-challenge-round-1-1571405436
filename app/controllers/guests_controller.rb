class GuestsController < ApplicationController

  def get_guest
    @guest = Guest.find(params[:id])
  end 

  def index
    @guests = Guest.all
  end

  def show
    get_guest
  end 

end

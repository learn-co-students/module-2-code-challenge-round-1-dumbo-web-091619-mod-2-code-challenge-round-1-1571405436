class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def show 
    @guest = Guest.find(params[:id])
  end

  #Added something a little extra below :)
  def destroy
    @guest = Guest.find(params[:id])

    redirect_to guests_path
  end
  
end

class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def new
    @guest = Guest.new
  end 

  def create
    @guest = Guest.create(params[:id]) 
  end 

  def show
    @guest = Guest.find(params[:id])
  end

  def update
    @guest = Guest.update(params[:id])
  end 




  # # def guest_params 
  # # params.require(:guests).permit(:name, :occupation)
  # # end 



  # private


  
end

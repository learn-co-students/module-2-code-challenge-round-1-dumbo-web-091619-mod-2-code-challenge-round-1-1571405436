class AppearancesController < ApplicationController

def index
    @appearances = Appearance.all
  end

  def new
    @appearance = Appearance.new
  end 

  def create
    @appearance = Appearance.create(params[:id])
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  
end 
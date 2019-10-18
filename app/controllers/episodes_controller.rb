class EpisodesController < ApplicationController

  def index #i know its not in the deliverables but its already here... so.... just gonna rock with it
    @episodes = Episode.all
  end

  def show
   @episode = Episode.find(params[:id])
   @guests = @episode.guests
  end 

end

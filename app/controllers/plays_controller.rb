class PlaysController < ApplicationController
  def index

  end

  def new #a view action
    @play = Play.new
  end

  def create #a database action
    @play = Play.new(play_params)
  end


  private

  def play_params
    params.require(:play).permit(:title, :description, :director)
  end

end

class PlaysController < ApplicationController
  before_action :find_play, only: [:show, :edit, :update, :destroy]

  def index
    @plays = Play.all.order("created_at DESC")
  end

  def show
  end

  def new #a view action
    @play = Play.new
  end

  def create #a database action
    @play = Play.new(play_params)

    if @play.save
      redirect_to root_path
    else
      render 'new'
    end
  end


  private

  def play_params
    params.require(:play).permit(:title, :description, :director)
  end

  def find_play
    @play = Play.find(params[:id])
  end
end

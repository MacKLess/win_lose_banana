class GamesController < ApplicationController

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new
    if @game.save
      flash[:notice] = "Play nice!"
      redirect_to game_path(@game)
    else
      flash[:alert] = "Yes, we have no bananas!"
      render :new
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    flash[:notice] = "Come back when you have more bananas"
    redirect_to "/"
  end
end

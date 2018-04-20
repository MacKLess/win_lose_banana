class RoundsController < ApplicationController

  def show
    @game = Game.find(params[:game_id])
    @round = Round.find(params[:id])
  end

  def create
    @game = Game.find(params[:game_id])
    @round = @game.rounds.new
    if @game.rounds.save
      flash[:notice] = "Next round!"
      redirect_to game_round_path(@game, @round)
    else
      flash[:notice] = "Something went terribly wrong. You can't do that with a banana"
      redirect_to game_path(@game)
    end
  end

  def update
    @game = Game.find(params[:game_id])
    @round = @game.rounds.find(params[:id])
    if @round.update(round_params)
      flash[:notice] = "Round over"
      redirect_to game_path(@game)
    else
      flash[:notice] = "This round can never end"
      redirect_to game_round_path(@game, @round)
    end
  end

end

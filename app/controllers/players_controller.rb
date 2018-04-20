class PlayersController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
    @player = @game.players.new
  end

  def create
    @game = Game.find(params[:game_id])
    @player = Player.new(player_params)
    if @player.save
      flash[:notice] = "Welcome Player!"
      redirect_to game_path(@game)
    else
      flash[:notice] = "You appear to be a banana short of a bunch"
      render :new
    end
  end

  def update
    @game = Game.find(params[:game_id])
    @player = Player.find(params[:id])
    if @player.update(player_params)
      flash[:notice] = "There's something new about you. Did you get a haircut?"
      redirect_to "/"
    else
      flash[:notice] = "Something went wrong. I guess you can never leave"
      redirect_to game_path(@game)
    end
  end

end

class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @games = Game.find(params[:id])
  end

  def new
    @user = User.find(1)
    @game = Game.new(user: @user)
  end

  def create
    @game = Game.new(game_params)
    @game.save
    redirect_to game_path(@game.id)
  end
end

private

def game_params
  params.require(:game).permit(:id, :name, :category, :price, :age_range, :rating, :manufacturer)
end

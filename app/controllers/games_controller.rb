class GamesController < ApplicationController

  skip_before_action :authenticate_user!, only: :index
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    @game.save
    redirect_to game_path(@game)
  end
end

private

def game_params
  params.require(:game).permit(:id, :name, :category, :price, :age_range, :rating, :manufacturer, :image_url)
end

class Api::V1::GamesController < ApplicationController

    def index
        @games = Game.all
        render json: @games
    end

    def show
        @game = Game.find(params[:id])  
    end

    def create
        @game = Game.new(game_params)
        @game.save
    end

    # def create
    #     @movement = Movement.new(movement_params)

    # end

    private

    def game_params()
        params.require(:game).permit(:player_1_name, :player_2_name, )
    end
    
end
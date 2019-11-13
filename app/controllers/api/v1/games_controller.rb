class Api::V1::GamesController < ApplicationController

    def index
        @games = Game.all
        render json: @games
    end

    def show
        @game = Game.find(params[:id])  
    end

    def create
        game = Game.new(game_params)
        if game.save
           render json: {status: 'ok'}
        else
            render json: {status:'bad'}
        end 
        
    end

    def chosee_move
        @move = Movement.new(move_params)
        if @move.save
            render json: {status:'ok'}
        else
            render json: {status: 'bad'}
        end
    end 

    private
    def set_game
        @game = Game.find(params[:id])
      end
    def game_params
        params.permit(:player_1_name, :player_2_name)
    end
    def move_params
        params.permit(:name, :movement_id)
    end
    
end
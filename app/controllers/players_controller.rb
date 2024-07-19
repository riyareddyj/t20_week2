class PlayersController < ApplicationController
    before_action :set_player, only: [:show, :edit, :update, :destroy] 

    def show
    end
  
    def index
      @players = Player.all
    end
  
    def new
      @player = Player.new
    end
  
    def edit
    end
  
    def create
      @player = Player.new(player_params)
      if @player.save
        flash[:notice] = "Player was created successfully"
        redirect_to @player
      else
        render 'new'
      end
    end
  
    def update
      if @player.update(player_params)
        flash[:notice] = "Player was updated successfully"
        redirect_to @player
      else
        render 'edit'
      end
    end
  
    def destroy
      @player.destroy
      redirect_to players_path
    end
    
    private 
  
    def set_player
      @player = Player.find(params[:id])        
    end
  
    def player_params
      params.require(:player).permit(:name, :age, :position, :team_id, :role, :is_captain, :is_active, :description)
    end
  
  end
  
end

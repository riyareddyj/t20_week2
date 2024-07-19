class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy] #set_article before anything else

  def show
  end

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def edit
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "Team was created successfully"
      redirect_to @team
    else
      render 'new'
    end
  end

  def update
    if @team.update(team_params)
      flash[:notice] = "Team was updated successfully"
      redirect_to @team
    else
      render 'edit'
    end
  end

  def destroy
    @team.destroy
    redirect_to teams_path
  end
  
  private 

  def set_team
    @team = Team.find(params[:id])        
  end

  def team_params
    params.require(:team).permit(:name, :country, :founded, :description)
  end

end

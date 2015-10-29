class TeamsController < ApplicationController
  
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    # render text: params.inspect
    # Team.create(params[:team])
    Team.create(team_params)   #see the team_params from the private method below
    redirect_to(teams_path)
  end

  def show
    @team = Team.find(params[:id])
  end

  def destroy
    team = Team.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
    team.destroy
    redirect_to(teams_path)
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    team = Team.find(params[:id]) #again - the data does not need to be exposed - no @
    team.update(team_params) #from the private method below - whitelist check
    redirect_to(teams_path)
  end


  private
  def team_params
    # allows these params to be accessed by the methods above
    params.require(:team).permit(:name, :image, :founded, :mascot, :league, :last_position)
  end


end
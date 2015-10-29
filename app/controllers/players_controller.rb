class PlayersController < ApplicationController
  
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    # render text: params.inspect
    # Team.create(params[:team])
    Player.create(player_params)   #see the team_params from the private method below
    redirect_to(players_path)
  end

  def show
    @player = Player.find(params[:id])
  end

  def destroy
    player = Player.find(params[:id])  #doesn't need @ since it is not exposed - only being deleted
    player.destroy
    redirect_to(players_path)
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    player = Player.find(params[:id]) #again - the data does not need to be exposed - no @
    player.update(player_params) #from the private method below - whitelist check
    redirect_to(players_path)
  end


  private
  def player_params
    # allows these params to be accessed by the methods above
    params.require(:player).permit(:name, :position, :team_id)
  end


end
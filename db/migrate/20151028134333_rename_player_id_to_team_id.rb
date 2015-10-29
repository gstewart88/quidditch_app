class RenamePlayerIdToTeamId < ActiveRecord::Migration
  def change
    rename_column :players, :player_id, :team_id
  end
end

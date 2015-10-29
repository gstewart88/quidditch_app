class FixImageIssue < ActiveRecord::Migration
  def change
    remove_column :players, :image, :string
  end
end

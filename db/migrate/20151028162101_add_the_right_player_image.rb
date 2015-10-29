class AddTheRightPlayerImage < ActiveRecord::Migration
  def change
    add_column :players, :image, :text
  end
end

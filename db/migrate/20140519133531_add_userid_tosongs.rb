class AddUseridTosongs < ActiveRecord::Migration
  def up
    add_column :songs, :user_id, :integer
  end

  def down
  end
end

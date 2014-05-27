class AddAvatarFileToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :avatar_file, :text
  end
end

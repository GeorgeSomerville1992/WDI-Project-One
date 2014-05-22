class AddFileToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :file, :text
  end
end

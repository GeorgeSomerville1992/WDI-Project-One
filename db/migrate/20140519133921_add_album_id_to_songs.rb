class AddAlbumIdToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :ablum_id, :integer
    add_column :songs, :artist_id, :integer
  end
end

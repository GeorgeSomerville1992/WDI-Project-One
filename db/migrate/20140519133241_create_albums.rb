class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.text :artwork
      t.date :date_created
      t.date :date_updated

      t.timestamps
    end
  end
end

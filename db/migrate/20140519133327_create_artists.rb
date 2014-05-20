class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :picture
      t.date :date_created
      t.date :date_updated

      t.timestamps
    end
  end
end

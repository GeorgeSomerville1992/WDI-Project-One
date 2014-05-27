class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.text :file
      t.date :date_created
      t.date :date_modifed

      t.timestamps
    end
  end
end

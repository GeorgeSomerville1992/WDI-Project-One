class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :bio
      t.string :avatar
      t.string :history
      t.string :background

      t.timestamps
    end
  end
end

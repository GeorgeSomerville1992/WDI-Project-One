class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :role
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
  end
end

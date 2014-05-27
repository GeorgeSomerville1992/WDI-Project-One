class AddFileToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :file, :text
  end
end

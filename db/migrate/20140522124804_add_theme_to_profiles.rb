class AddThemeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :theme, :string
  end
end

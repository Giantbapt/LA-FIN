class AddSlugToPortraits < ActiveRecord::Migration[6.0]
  def change
    add_column :portraits, :slug, :string
    add_index :portraits, :slug, unique: true
  end
end

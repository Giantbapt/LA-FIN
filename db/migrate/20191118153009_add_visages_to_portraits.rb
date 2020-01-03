class AddVisagesToPortraits < ActiveRecord::Migration[6.0]
  def change
  	add_column :portraits, :visages, :string
  end
end

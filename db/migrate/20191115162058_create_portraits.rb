class CreatePortraits < ActiveRecord::Migration[6.0]
  def change
    create_table :portraits do |t|
      t.string :image
      t.text :titre
      t.text :details
      t.string :dimensions
      t.integer :numéro

      t.timestamps
    end
  end
end

class AddPetiteimageToPortraits < ActiveRecord::Migration[6.0]
  def change
    add_column :portraits, :petiteimage, :string
  end
end

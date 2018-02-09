class AddNameToCar < ActiveRecord::Migration[5.1]
  def change
    add_column :cars, :name, :string
  end
end

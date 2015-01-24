class RemoveComortTypeNameFromCars < ActiveRecord::Migration
  def change
    remove_column :cars, :comfort_type, :string
  end
end

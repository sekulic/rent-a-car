class AddComfortTypeIdToCars < ActiveRecord::Migration
  def change
    add_column :cars, :comfort_type_id, :integer
  end
end

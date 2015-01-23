class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :comfort_type
      t.boolean :available

      t.timestamps
    end
  end
end

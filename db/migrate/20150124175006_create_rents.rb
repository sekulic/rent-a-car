class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :no_of_days
      t.references :car, index: true

      t.timestamps
    end
  end
end

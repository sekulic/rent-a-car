class AddPhotosColumnsToCar < ActiveRecord::Migration
  def self.up
    add_attachment :cars, :photo1
    add_attachment :cars, :photo2
    add_attachment :cars, :photo3 
  end

  def self.down
    remove_attachment :cars, :photo1
    remove_attachment :cars, :photo2
    remove_attachment :cars, :photo3
  end
end

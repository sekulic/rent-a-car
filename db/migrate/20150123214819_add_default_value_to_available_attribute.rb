class AddDefaultValueToAvailableAttribute < ActiveRecord::Migration
def up
  change_column :cars, :available, :boolean, :default => true
end

def down
  change_column :cars, :available, :boolean, :default => nil
end
end

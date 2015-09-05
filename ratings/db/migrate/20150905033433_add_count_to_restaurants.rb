class AddCountToRestaurants < ActiveRecord::Migration

  def change
  	add_column :restaurants, :count, :integer
  end
end

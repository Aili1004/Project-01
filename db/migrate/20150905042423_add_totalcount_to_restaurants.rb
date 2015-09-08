class AddTotalcountToRestaurants < ActiveRecord::Migration
  def change
  	add_column :restaurants, :totalcount, :integer
  end
end

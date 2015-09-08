class AddRestaurantUserIdToRestaurants < ActiveRecord::Migration
  def change
  	add_column :restaurants, :restaurant_user_id, :integer
  end
end

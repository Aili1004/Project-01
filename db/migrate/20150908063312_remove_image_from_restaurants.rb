class RemoveImageFromRestaurants < ActiveRecord::Migration
  def change
  	remove_column :restaurants, :image, :text
  end
end

class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.text :name
        t.text :description
    	t.text :address
    	t.text :opening_hours
    	t.text :image
    	t.text :popular_food
    	t.timestamps
    end
  end
end

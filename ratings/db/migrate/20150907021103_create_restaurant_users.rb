class CreateRestaurantUsers < ActiveRecord::Migration
  def change
    create_table :restaurant_users do |t|
    	t.text :email
    	t.text :name
    	t.text :license_number
    	t.timestamps null: false
    end
  end
end

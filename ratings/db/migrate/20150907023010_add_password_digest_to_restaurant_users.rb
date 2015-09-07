class AddPasswordDigestToRestaurantUsers < ActiveRecord::Migration
  def change
    add_column :restaurant_users, :password_digest, :string
  end
end

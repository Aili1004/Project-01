# == Schema Information
#
# Table name: restaurant_users
#
#  id              :integer          not null, primary key
#  email           :text
#  name            :text
#  license_number  :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#


class RestaurantUser < ActiveRecord::Base
	has_secure_password
	has_many :restaurants

	# accepts_nested_attributes_for :restaurants, :allow_destroy => true
	# validates_presence_of :image

	validates :email, :presence => true, :uniqueness => true 
	validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 3 }
	validates :license_number, :presence => true, :uniqueness => true 
end

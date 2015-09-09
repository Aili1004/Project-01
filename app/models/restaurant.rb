# == Schema Information
#
# Table name: restaurants
#
#  id                 :integer          not null, primary key
#  name               :text
#  description        :text
#  address            :text
#  opening_hours      :text
#  popular_food       :text
#  created_at         :datetime
#  updated_at         :datetime
#  count              :integer
#  totalcount         :integer
#  restaurant_user_id :integer
#

class Restaurant < ActiveRecord::Base
	has_many :comments
	belongs_to :restaurant_user
	has_many :images

	# geocoded_by :address
	# after_validation :geocode
end

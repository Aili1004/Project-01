# == Schema Information
#
# Table name: restaurants
#
#  id            :integer          not null, primary key
#  name          :text
#  description   :text
#  address       :text
#  opening_hours :text
#  image         :text
#  popular_food  :text
#  created_at    :datetime
#  updated_at    :datetime
#  count         :integer
#  totalcount    :integer
#

class Restaurant < ActiveRecord::Base
	has_many :comments
end

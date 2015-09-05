# == Schema Information
#
# Table name: comments
#
#  id            :integer          not null, primary key
#  content       :text
#  like          :boolean
#  restaurant_id :integer
#  created_at    :datetime
#  updated_at    :datetime
#  user_id       :integer
#

class Comment < ActiveRecord::Base
	belongs_to :restaurant
	belongs_to :user
end

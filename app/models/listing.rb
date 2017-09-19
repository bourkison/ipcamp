# == Schema Information
#
# Table name: listings
#
#  id          :integer          not null, primary key
#  name        :text
#  description :text
#  user_id     :integer
#  photo       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Listing < ApplicationRecord
	belongs_to :user, :optional => true
	has_many :bids
	has_many :comments
	has_one :purchase
end

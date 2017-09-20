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
	has_many :follows

	has_many :users, through: :follows

	def self.search(search)
		Listing.where("name ILIKE ?", "%#{search}%")
	end
end

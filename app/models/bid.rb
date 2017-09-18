# == Schema Information
#
# Table name: bids
#
#  id         :integer          not null, primary key
#  listing_id :integer
#  user_id    :integer
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bid < ApplicationRecord
	belongs_to :listing
	belongs_to :user
end

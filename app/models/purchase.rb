# == Schema Information
#
# Table name: purchases
#
#  id         :integer          not null, primary key
#  listing_id :integer
#  user_id    :integer
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Purchase < ApplicationRecord
	belongs_to :user
	belongs_to :listing
end

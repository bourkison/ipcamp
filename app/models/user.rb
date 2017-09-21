# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  firstname       :text
#  lastname        :text
#  dob             :date
#  country         :text
#  credit_card_no  :text
#  name_on_card    :text
#  expiry          :text
#  ccv             :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :text
#  password_digest :string
#

class User < ApplicationRecord
	validates :email, :presence => true, :uniqueness => true

	has_many :listings
	has_many :purchases
	has_many :comments
	has_many :bids

	has_many :follows
	has_many :authentications
	
	has_secure_password
end

class AddExpiryToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :expiry, :datetime
  end
end

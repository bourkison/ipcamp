class CreateBids < ActiveRecord::Migration[5.1]
  def change
    create_table :bids do |t|
      t.integer :listing_id
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end

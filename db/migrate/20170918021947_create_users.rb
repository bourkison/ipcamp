class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.text :firstname
      t.text :lastname
      t.date :dob
      t.text :country
      t.text :credit_card_no
      t.text :name_on_card
      t.text :expiry
      t.text :ccv

      t.timestamps
    end
  end
end

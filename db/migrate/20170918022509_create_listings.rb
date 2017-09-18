class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.text :name
      t.text :description
      t.integer :user_id
      t.text :photo

      t.timestamps
    end
  end
end

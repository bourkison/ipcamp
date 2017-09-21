class CreateAuthentications < ActiveRecord::Migration[5.1]
  def change
    create_table :authentications do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.text :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end

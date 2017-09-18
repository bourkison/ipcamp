# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :firstname => 'Nicholas', :lastname => 'Johnson', :username => 'bigbird420', :email => 'nicholas@ga.co', :password => 'chicken', :country => 'Australia', :credit_card_no => '5555 5555 5555 5555', :name_on_card => 'Nicholas Johnson', :expiry => '12/20', :ccv => '555'

u2 = User.create :firstname => 'Harrison', :lastname => 'Bourke', :username => 'bourkison', :email => 'harrison@ga.co', :password => 'chicken', :country => 'Australia', :credit_card_no => '5555 5555 5555 5554', :name_on_card => 'Harrison Bourke', :expiry => '12/22', :ccv => '554'

u3 = User.create :firstname => 'Matt', :lastname => 'Edge', :username => 'edgy', :email => 'edge@ga.co', :password => 'chicken', :country => 'Australia', :credit_card_no => '5555 5555 5555 5556', :name_on_card => 'Matt Edge', :expiry => '12/23', :ccv => '556'

Listing.destroy_all
l1 = Listing.create :name => 'I wish I was at home listening to Swans', :description => 'for sale I have here today this premium content I WISH I WAS AT HOME LISTENING TO SWANS. several thousand strong audience. reasonable price. strong meme repertoire. happy to answer any questions', :photo => 'http://38.media.tumblr.com/03f5245a2137ac023fc3c0e70a754761/tumblr_nb8qmutiLP1qkg8nxo1_500.jpg'

l2 = Listing.create :name => 'Shitpostbot5000', :description => 'bot post meme. audience go mental. script sold separately. enquire within!', :photo => 'https://pics.me.me/listens-to-death-grips-once-shitpostbot-5000-1176147.png'

Comment.destroy_all
c1 = Comment.create :content => 'what a great piece of intellectual property you have here, friend!!!!!!'

Bid.destroy_all
b1 = Bid.create :amount => 500

Purchase.destroy_all
p1 = Purchase.create :amount => 500


### Associtation ###

u1.listings << l1
u2.listings << l2

u3.comments << c1
l1.comments << c1

u3.purchase = p1
l2.purchase = p1

u3.bids << b1
l2.bids << b1


# l1.user_id << u1
# l2.user_id << u2
# c1.user_id << u3
# c1.listing_id << l1
# p1.user_id << u3
# b1.listing_id << l2
# b1.user_id << u3

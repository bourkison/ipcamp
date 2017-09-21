task :check_for_expiry => :environment do

  puts "Updating listings..."
  Listing.update
  puts "done."

end

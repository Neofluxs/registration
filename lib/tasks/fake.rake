task :fake => environment do
  10.times do
    Event.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.paragraph,
      venue: Faker::Address.street_address,
    )
  end
end

puts "🌱 Seeding movies..."

# Seed your database here
20.times do
    # create a movie with random data
    Movie.create(
      title: Faker::Movie.title,  
      poster: src="https://loremflickr.com/320/240",
      description: Faker::Lorem.paragraphs,
      year: rand(1960...2023),
      runtime: rand(90...180)
    )
  end

puts "✅ Done seeding!"

puts "🌱 Seeding movies..."

# Seed your database here
10.times do
    # create a movie with random data
    Movie.create(
      title: Faker::Movie.title,  
      poster: src="https://loremflickr.com/320/240"
      genre: Faker::Movie.genre,
      description: Faker::Movie.description,
      year: rand(1960...2023)
      release_date: Faker::Movie.release_date,
      runtime: Faker::Movie.runtime
    )
  end

puts "✅ Done seeding!"

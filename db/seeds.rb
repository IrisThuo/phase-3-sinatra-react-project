puts "🌱 Seeding spices..."

# Seed your database here
10.times do
    # create a movie with random data
    Movie.create(
      title: Faker::Movie.title,
      genre: Faker::Movie.genre,
      description: Faker::Movie.description,
      year: Faker::Movie.year,
      
    )
  end

puts "✅ Done seeding!"

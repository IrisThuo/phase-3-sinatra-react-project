puts "🌱 Seeding ..."

# Seed your database here
2.times do
    # create a movie with random data
    Movie.create(
      title: Faker::Movie.title,  
      poster: src="https://loremflickr.com/320/240",
      description: Faker::Lorem.paragraphs,
      year: rand(1960...2023),
      runtime: rand(90...180)
    )
  end

3.times do
    # create a movie with random data
    User.create(
      username: Faker::Internet.username(specifier: 5..10),
      password: Faker::Internet.password(min_length: 8)
    ) 
  end


puts "✅ Done seeding!"

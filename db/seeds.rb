# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# Creating users

# db/seeds.rb

# Create 20 users
(1..20).each do |i|
    User.create(
      email: "user#{i}@example.com",
      password: "password#{i}",
      first_name: "First#{i}",
      last_name: "Last#{i}"
    )
  end
  
  # Create profiles associated with users
  User.all.each do |user|
    user.profile.update(
      bio: "Bio for #{user.first_name} #{user.last_name}"
    )
  end
  


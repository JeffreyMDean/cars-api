# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
car1 = Car.new(car_make: "Honda", car_model: "Civic", year: 1998)
car1.save

car2 = Car.new(car_make: "Toyota", car_model: "Tacoma", year: 2017)
car2.save

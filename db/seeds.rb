# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
[ [ "Berry", 10, 10, 10 ], [ "Michu", 7, 10, 7 ] ].each do |kitty|
  Kitten.find_or_create_by!(name: kitty[0], age: kitty[1], cuteness: kitty[2], softness: kitty[3])
end

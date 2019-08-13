# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(name: "Rachel", username: "rara", password: "rara" )

FavArt.create(user_id: 1, keyword: "cats", api_id: 744564, artist: "", title: "", date: "ca. 1295–664 B.C.", collection: "Egyptian Art", img_url: "https://images.metmuseum.org/CRDImages/eg/web-large/LC-2017_34_EGDP026053.jpg")


p seeded! 🐈

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

laughs = Category.create(name: "laughs")
makeup = Category.create(name: "makeup")
recipe = Category.create(name: "recipe")


Video.create(video_url: "https://www.tiktok.com/@brussellham/video/7000420900419980549?sender_device=mobile&sender_web_id=7007507174352111109&is_from_webapp=v1&is_copy_url=0", category: laughs)
Video.create(video_url: "https://www.tiktok.com/@joerauth_/video/7006352635620117765?sender_device=mobile&sender_web_id=7007507174352111109&is_from_webapp=v1&is_copy_url=0", category: laughs)
Video.create(video_url: "https://www.tiktok.com/@adisonjustis/video/7009062940837989638?sender_device=mobile&sender_web_id=7007507174352111109&is_from_webapp=v1&is_copy_url=0", category: makeup)
Video.create(video_url: "https://www.tiktok.com/@bysophialee/video/7009830297285987590?sender_device=mobile&sender_web_id=7007507174352111109&is_from_webapp=v1&is_copy_url=0", category: recipe)

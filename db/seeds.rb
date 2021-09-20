# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

laughs = Category.create(name: "Laughs")


Video.create(video_url: "https://www.tiktok.com/@brussellham/video/7000420900419980549?sender_device=mobile&sender_web_id=7007507174352111109&is_from_webapp=v1&is_copy_url=0", category_id: laughs.id )
Video.create(video_url: "https://www.tiktok.com/@joerauth_/video/7006352635620117765?sender_device=mobile&sender_web_id=7007507174352111109&is_from_webapp=v1&is_copy_url=0")


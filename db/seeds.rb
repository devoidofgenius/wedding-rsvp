# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name:  "Chris",
             last_name: "Ellinger",
             code: "gracemika2015",
             email: "cellinger@gmail.com",
             password:              "N0l1m1ts!!",
             password_confirmation: "N0l1m1ts!!",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
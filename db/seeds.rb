# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name:  "Chris",
             last_name: "Ellinger",
             wedding_code: "gracemika2015",
             email: "cellinger@gmail.com",
             password:              "N0l1m1ts!!",
             password_confirmation: "N0l1m1ts!!",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(first_name:  "Grace",
             last_name: "Dunlap",
             wedding_code: "gracemika2015",
             email: "grace.md13@gmail.com",
             password:              "gracemika2015",
             password_confirmation: "gracemika2015",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

User.create!(first_name:  "Mika",
             last_name: "Labergerie",
             wedding_code: "gracemika2015",
             email: "mikalabergerie@gmail.com",
             password:              "gracemika2015",
             password_confirmation: "gracemika2015",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
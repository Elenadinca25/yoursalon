# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Salon.destroy_all if Rails.env.development?
Stylist.destroy_all if Rails.env.development?
Hairstyle.destroy_all if Rails.env.development?

Salon.create(name: "YourBeautySalon", location: "Coppadocia")

Stylist.create(name: "Lery",  years_of_experience: 5, occupation: "Hairdresser", salon_id: Salon.first.id)
Stylist.create(name: "Adao",  years_of_experience: 6, occupation: "Afro Hairdresser", salon_id: Salon.first.id)
Stylist.create(name: "Dorothy",  years_of_experience: 4, occupation: "Colorist", salon_id: Salon.first.id)
Stylist.create(name: "Mina",  years_of_experience: 12, occupation: "Barber", salon_id: Salon.first.id)
Stylist.create(name: "July",  years_of_experience: 2, occupation: "Afro Barber", salon_id: Salon.first.id)
Stylist.create(name: "Gbenga",  years_of_experience: 1, occupation: "Trainee", salon_id: Salon.first.id)


Hairstyle.create(style: "Aniston", price: 60, stylist_id: Stylist.first.id)
Hairstyle.create(style: "Pixie Cut", price: 65, stylist_id: Stylist.first.id)
Hairstyle.create(style: "Bowl Cut", price: 60, stylist_id: Stylist.first.id)
Hairstyle.create(style: "Bangs", price: 95, stylist_id: Stylist.first.id)
Hairstyle.create(style: "Bob", price: 110, stylist_id: Stylist.first.id)
Hairstyle.create(style: "Braids", price: 95, stylist_id: Stylist.second.id)
Hairstyle.create(style: "Bantu Knots", price: 55, stylist_id: Stylist.second.id)
Hairstyle.create(style: "Corn Rows", price: 60, stylist_id: Stylist.second.id)
Hairstyle.create(style: "Flat Iron", price: 65, stylist_id: Stylist.second.id)
Hairstyle.create(style: "Flat Twist", price: 95, stylist_id: Stylist.second.id)
Hairstyle.create(style: "Colour Me Cardi", price: 125, stylist_id: Stylist.third.id)
Hairstyle.create(style: "Rainbow", price: 125, stylist_id: Stylist.third.id)
Hairstyle.create(style: "Unicorn Tail", price: 125, stylist_id: Stylist.third.id)
Hairstyle.create(style: "Trophy Wife", price: 125, stylist_id: Stylist.third.id)
Hairstyle.create(style: "Pink", price: 125, stylist_id: Stylist.third.id)
Hairstyle.create(style: "Flat Top", price: 15, stylist_id: Stylist.fourth.id)
Hairstyle.create(style: "Level One", price: 20, stylist_id: Stylist.fourth.id)
Hairstyle.create(style: "Waves", price: 20, stylist_id: Stylist.fourth.id)
Hairstyle.create(style: "Beckham", price: 20, stylist_id: Stylist.fourth.id)
Hairstyle.create(style: "Boris", price: 20, stylist_id: Stylist.fourth.id)
Hairstyle.create(style: "Dreads", price: 15, stylist_id: Stylist.fifth.id)
Hairstyle.create(style: "Buzz Cut", price: 20, stylist_id: Stylist.fifth.id)
Hairstyle.create(style: "Fade", price: 20, stylist_id: Stylist.fifth.id)
Hairstyle.create(style: "High Top", price: 20, stylist_id: Stylist.fifth.id)
Hairstyle.create(style: "Side Parting", price: 20, stylist_id: Stylist.fifth.id)
Hairstyle.create(style: "Wash & Set", price: 40, stylist_id: Stylist.last.id)

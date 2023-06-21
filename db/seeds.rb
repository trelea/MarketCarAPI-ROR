# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

100.times do
    car_mark = (Faker::Vehicle.make).to_s
    Car.create(
        mark: car_mark,
        model: Faker::Vehicle.model(make_of_model: car_mark),
        year: Faker::Vehicle.year,
        price: Faker::Number.between(from: 10000, to: 100000), 
        bodytype: Faker::Vehicle.car_type,
        mileage: Faker::Vehicle.mileage,
        used: Faker::Boolean.boolean,
        volume: Faker::Number.between(from: 1, to: 6),
        power: Faker::Number.between(from: 85, to: 1000),
        fuel: Faker::Vehicle.fuel_type,
        transmission: Faker::Vehicle.transmission,
        drivetrain: Faker::Vehicle.drive_type,
        color: Faker::Vehicle.color,
        options: Faker::Vehicle.car_options    
    )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

10.times do |index|

  Citie.create(
    citi_name: Faker::Name.first_name
  )

  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    citie_id: rand(Citie.first.id..Citie.last.id)
  )

  Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    citie_id: rand(City.first.id..City.last.id)
  )

  Appointment.create(
    date: Faker::Date.backward(30),
    patient_id: rand(Patient.first.id..Patient.last.id),
    doctor_id: rand(Doctor.first.id..Doctor.last.id),
    city_id: rand(City.first.id..City.last.id)
  )

  Specialitie.create(
    name: Faker::Name.first_name
  )
 end
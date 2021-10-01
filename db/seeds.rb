# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doc1 = Doctor.create(name: "Acula", doctor_type: "Phlebotomist")
doc2 = Doctor.create(name: "Frankenstein", doctor_type: "Anatomist")

patient1 = Patient.create(name: "Bram Stoker", age: 45)
patient2 = Patient.create(name: "Carl Sagan", age: 56)
patient3 = Patient.create(name: "Mr. Munster", age: 20)

Appointment.create(patient: patient1, doctor: doc1, date: Time.now, notes: "Meeting of the creator and the creation")
Appointment.create(patient: patient3, doctor: doc2, date: Time.now, notes: "Also a meeting of the creator and the creation")
Appointment.create(patient: patient2, doctor: doc1, date: Time.now, notes: "Getting some blood work done")

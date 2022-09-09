# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 5.times do
#     Student.create({first_name: Faker::Name.first_name, 
#                     last_name: Faker::Name.last_name,
#                     gender: Faker::Number.between(from: 0, to: 1),
#                     dob: Faker::Date.between(from: '2000-01-01', to: '2020-01-01'),
#                     contact: Faker::Number.binary(digits: 10).to_str,
#                     status: Faker::Number.between(from: 0, to: 1)
#     })
# end

Student.create(first_name: "Arun",
                last_name: "Arora",
                gender: 0,
                dob: "2010-01-01",
                contact: "9999993333",
                status: 1)

Student.create(first_name: "Sachin",
                    last_name: "Kumar",
                    gender: 0,
                    dob: "2012-02-02",
                    contact: "9999993323",
                    status: 1)

Student.create(first_name: "Vijay",
                        last_name: "Sharma",
                        gender: 0,
                        dob: "2012-03-03",
                        contact: "9999453333",
                        status: 1)

Student.create(first_name: "Kirti",
                            last_name: "Koli",
                            gender: 1,
                            dob: "2013-03-02",
                            contact: "9999234333",
                            status: 1)
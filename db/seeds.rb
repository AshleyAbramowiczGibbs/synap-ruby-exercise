# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Person.create(name: "Test Person", job_title:"boss", email_address:"test@email.com", phone: "112-223-2234", organization_id: 1)

Organization.create(name: "Company A", domain:"company.com", phone: "112-223-2234", people_count:40, address_id:1)

Address.create(street: "Apple St", city:"Chicago", state:"IL")

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Person.create(name: "Test Person", job_title:"boss", email_address:"test@email.com", phone: "112-223-2234", organization_id: 1)

# Organization.create(name: "Company A", domain:"company.com", phone: "112-223-2234", people_count:40, address_id:1)

# Address.create(street: "Apple St", city:"Chicago", state:"IL")

require 'csv'

csv_file = 'crm_exercise_data.csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', csv_file))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|

    o = Organization.create
    o.name = row[4]
    o.phone = row[5]
    o.domain = row[6]
    o.address_id = address.id
    puts "#{o.name} saved"

    p = Person.create
    p.name = row[0]
    p.job_title = row[1]
    p.email_address = row[2]
    p.phone = row[3]
    p.organization_id = organization.id
    p.address_id = address.id
    puts "#{p.name} saved"


    a = Address.create
    a.street = row[7]
    a.city = row[8]
    a.state = row[9]
    a.zip = row[10]
    puts "#{a.street}, #{a.city} #{a.state} saved"
  end


puts "There are now #{Person.count} rows in the Person table"
puts "There are now #{Organization.count} rows in the Organization table"
puts "There are now #{Address.count} rows in the Address table"
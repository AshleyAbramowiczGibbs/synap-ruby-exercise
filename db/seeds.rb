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

    # a = Address.new
    # a.street = row[7]
    # a.city = row[8]
    # a.state = row[9]
    # a.zip = row[10]
    # a.save
    # a.reload

    #if org doesn't exist create new

    # 1. Check whether organization exists
    # 2. If not, create organization - and create its address - assign address the organization id
    # 3. Either way, hold on to the organization with a variable
    # 4. Create person - and assign person the organiztion id


  o = Organization.new
  o.name = row[4]
  o.phone = row[5]
  o.domain = row[6]
  o.save
  puts "#{o.name} saved"

  p = Person.new
  p.name = row[0]
  p.job_title = row[1]
  p.email_address = row[2]
  p.phone = row[3]
  p.organization_id = o.id
  p.save
  puts "#{p.name} saved"

  a = Address.new
  a.street = row[7]
  a.city = row[8]
  a.state = row[9]
  a.zip = row[10]
  a.organization_id = o.id
  puts "#{a.street}, #{a.city} #{a.state} #{a.id} saved"

    # o.update(address_id: a.id)




end



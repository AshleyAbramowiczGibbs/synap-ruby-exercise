# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#used the CSV library to parse the provided CSV data

require 'csv'

csv_file = 'crm_exercise_data.csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', csv_file))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|


#seed the organizations model

  o = Organization.new
  o.name = row[4]
  o.phone = row[5]
  o.domain = row[6]
  o.save
  puts "#{o.name} saved"

#seed the people model and include the organization_id

  p = Person.new
  p.name = row[0]
  p.job_title = row[1]
  p.email_address = row[2]
  p.phone = row[3]
  p.organization_id = o.id
  p.save
  puts "#{p.name} saved"

#see the addresses model and in the organization_id
  a = Address.new
  a.street = row[7]
  a.city = row[8]
  a.state = row[9]
  a.zip = row[10]
  a.organization_id = o.id
  a.save
  puts "#{a.street}, #{a.city} #{a.state} #{a.id} saved"

end



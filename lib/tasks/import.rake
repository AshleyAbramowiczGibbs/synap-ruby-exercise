# require 'csv'

# namespace :csv do

#   desc "Add CSV to the database"
#     task readincsv: :environment do
      
#       csv_file_path = 'lib/seeds/crm_exercise_data.csv'

#         CSV.foreach(csv_file_path) do |row|
#           # first - generate the Organization object
#            organization = Organization.find_or_create_by({
#               :name => row[4],
#               :phone => row[5],
#               :domain => row[6]
#             })

#           # second - generate the Person object
         
#             person = Person.create({
#                 :organization_id => organization.id,
#                 :name => row[0],
#                 :job_title => row[1],
#                 :email_address => row[2],
#                 :phone => row[3]
#             })
          

#           # third - generate the Address object 
#             address = Address.create({
#                 :organization_id => organization.id,
#                 :street => row[7],
#                 :city => row[8],
#                 :state => row[9],
#                 :zip => row[10]
#             })
#             puts "Row added!"
        
#         end
#     end
# end
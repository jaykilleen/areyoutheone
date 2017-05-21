# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation, {:only => %w[users]}
DatabaseCleaner.clean

puts "--------------------PROCESSING USERS.CSV--------------------"
users_csv = File.read(Rails.root.join('lib', 'seeds', 'users.csv'))
users_data = CSV.parse(users_csv, :headers => true)
users_data.each do |row|
  user = User.new
  user.email = row['email']
  user.save
  if user.save
    puts "User => #{user.email} saved"
  else
    puts "User => #{user.email} failed to save XXXXXXXXXX"
    puts user.errors.full_messages
  end
end
puts "--------------------FINISHED USERS.CSV--------------------"


puts "--------------------FINISHED PROCESSING CSVs--------------------"
puts "There are now #{User.count} rows in the users table"
# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
  # Create 20 Customers each with one transaction
  customer = Customer.create!(name: Faker::Name.name)

  Transaction.create!(
    input_amount: Faker::Number.decimal(2),
    output_amount: Faker::Number.decimal(2),
    input_currency: %i[EUR USD KES INR].sample,
    output_currency: %i[EUR USD KES INR].sample,
    transacted_at: Date.today,
    customer: customer
  )
end

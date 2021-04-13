# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },{ name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# test_user = User.create({company: 'Test',email: 'test1@test.com',password: '123456',country: 'Liberdade',activity: 'Marketing',website: 'www.birds.art.br',gender: 'Mr',first_name: "pat",last_name: "super",phone: "2199999899",whatsapp:"2199999899",linkedin: "https://www.linkedin.com/in/joa-azria/",release: "hello ",status: nil,member: nil,job: nil,category: "pb"})
puts 'Cleaning database...'
Package.destroy_all if Rails.env.development?

puts 'Creating teddies...'
Package.create!(price: 1500, sku: 'Add-on #1', name: 'Frontline Visibility')
Package.create!(price_cents: 749999, sku: 'Add-on #2', name: 'Newsletter')
Package.create!(price: 7500, sku: 'Add-on #3', name: 'Podcast')

puts 'Finished!'

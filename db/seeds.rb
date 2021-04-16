# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },{ name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# test_user = User.create({company: 'Test',email: 'test1@test.com',password: '123456',country: 'Liberdade',activity: 'Marketing',website: 'www.birds.art.br',gender: 'Mr',first_name: "pat",last_name: "super",phone: "2199999899",whatsapp:"2199999899",linkedin: "https://www.linkedin.com/in/joa-azria/",release: "hello ",status: nil,member: nil,job: nil,category: "pb"})

puts 'Cleaning database...'
Order.destroy_all if Rails.env.development?
Package.destroy_all if Rails.env.development?

puts 'Creating Package DiscoSport2021|Africa...'
Package.create!(price_cents: 150000, sku: 'Add-on #1', name: 'Frontline Visibility', description: ' ', image:'https://res.cloudinary.com/numama/image/upload/v1616795855/DISCOSPORT/discop_visual_foot_p5cpfx.png')
Package.create!(price_cents: 750000, sku: 'Add-on #2', name: 'Newsletter', description: 'Branding of the DISCOSPORT newsletter for six months.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/2_mfwzwq.png')
Package.create!(price_cents: 750000, sku: 'Add-on #3', name: 'Podcast', description: 'Audio branding of the DISCOSPORT podcast series for six months.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/3_mzztnv.png')
Package.create!(price_cents: 750000, sku: 'Add-on #4', name: 'Discosport.tv', description: 'Branding of DISCOSPORT.TV and its main pages for six months.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/4_zxcr8o.png')
Package.create!(price_cents: 350000, sku: 'Add-on #5', name: 'BOOTCAMP', description: 'Branding of one of on Boot Camp track and greeting opportunities.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/5_fmhbu0.png')
Package.create!(price_cents: 350000, sku: 'Add-on #6', name: 'WEB/APP', description: 'Branding of the web and mobile based networking app', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/6_zlopxn.png')
Package.create!(price_cents: 350000, sku: 'Add-on #7', name: 'CEREMONY', description: 'Virtual Opening Ceremony’s branding and greeting opportunities.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/7_gs67bq.png')
Package.create!(price_cents: 350000, sku: 'Add-on #8', name: 'PITCHING', description: 'Pitching Competition’s branding and greeting opportunities.', image:'https://res.cloudinary.com/numama/image/upload/v1618342793/DISCOSPORT/8_rx507s.png')


puts 'Finished!'

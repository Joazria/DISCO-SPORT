# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },{ name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Package Identities...'

Identity.create!(user_id: 9,
  company:'Star Wars',
  country: 'Brasil',
  activity: 'DELIVERY SOLUTION',
  website:'www.starwars.com',
  gender:'Frontline Visibility',
  phone: '21996995765',
  whatsapp: '+5521996995765',
  linkedin: 'https://www.linkedin.com/in/joa-azria/',
  release: 'Hello how you doint, I m so happy to meet you efqfveqjhgewBGEfbbgeBJOEGwbewg ueqbobhGFOEQobhgep ...',
  member: 'BUS DEVLOPMENT',
  job: 'Marketing Director')


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

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# User.find(20).avatar.purge
# require "open-uri"

# file = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQFf7xo_0YruOQ/profile-displayphoto-shrink_800_800/0/1517353721907?e=1628121600&v=beta&t=lT2Ck8EQLVKxs00jyXq0AwkLp-NUbnw3c0IGpiPkyQ4')
# user = User.find(12)
# user.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')


########### UPDATE USER#######

User.find(18).update(
  gender:'Mr',
  member:'PLATFORM',
  job: 'Media Rights',
  whatsapp: '+5521996995765',
  linkedin: 'https://www.linkedin.com/in/richardsarris/',
  company:'BLAST',
  activity: 'VIDEO GAMING PLATFORM',
  country: 'UK',
  phone: '+5521996995765',
  website:'https://blastpremier.com/')



# User.find(44).update(
#   gender:'Mr',
#   job: 'Creative Director',
#   whatsapp: '+524777064355',
#   linkedin: 'https://www.linkedin.com/in/criswinter/',
#   company:'FWMX',
#   activity: 'PRODUCTION COMPANY',
#   country: 'mexico',
#   phone: '+13109806872',
#   website:'+524777064355')


########### CREATE ID #######

Identity.create!(user_id: 18,
  company:'CS COMMUNICATIONS',
  country: 'Côte d Ivoire',
  activity: 'BROADCASTER | Public',
  website:'',
  gender:'Mr',
  phone: '+237694131598',
  whatsapp: '+237694131598',
  linkedin: 'https://www.linkedin.com/in/latyf-kader-koné-96147b14a',
  release: 'We are a audiovisual production and digital marketing company. We wanted to create new opportunities to sell our contents.',
  member: 'PRODUCE / CO-PRODUCE CONTENT',
  job: 'CEO')

########### UPDATE ID #######

# Identity.update(user_id: 18,
#   company:'CS COMMUNICATIONS',
#   country: 'Côte d Ivoire',
#   activity: 'BROADCASTER | Public',
#   website:'',
#   gender:'Mr',
#   phone: '+237694131598',
#   whatsapp: '+237694131598',
#   linkedin: 'https://www.linkedin.com/in/latyf-kader-koné-96147b14a',
#   release: 'We are a audiovisual production and digital marketing company. We wanted to create new opportunities to sell our contents.',
#   member: 'PRODUCE / CO-PRODUCE CONTENT',
#   job: 'CEO')

#  puts 'Finished!'

########### PACKAGE BUYER ######


# puts 'Cleaning database...'
# Order.destroy_all if Rails.env.development?
# Package.destroy_all if Rails.env.development?

# puts 'Creating Package DiscoSport2021|Africa...'
# Package.create!(price_cents: 150000, sku: 'Add-on #1', name: 'Frontline Visibility', description: ' ', image:'https://res.cloudinary.com/numama/image/upload/v1616795855/DISCOSPORT/discop_visual_foot_p5cpfx.png')
# Package.create!(price_cents: 750000, sku: 'Add-on #2', name: 'Newsletter', description: 'Branding of the DISCOSPORT newsletter for six months.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/2_mfwzwq.png')
# Package.create!(price_cents: 750000, sku: 'Add-on #3', name: 'Podcast', description: 'Audio branding of the DISCOSPORT podcast series for six months.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/3_mzztnv.png')
# Package.create!(price_cents: 750000, sku: 'Add-on #4', name: 'Discosport.tv', description: 'Branding of DISCOSPORT.TV and its main pages for six months.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/4_zxcr8o.png')
# Package.create!(price_cents: 350000, sku: 'Add-on #5', name: 'BOOTCAMP', description: 'Branding of one of on Boot Camp track and greeting opportunities.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/5_fmhbu0.png')
# Package.create!(price_cents: 350000, sku: 'Add-on #6', name: 'WEB/APP', description: 'Branding of the web and mobile based networking app', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/6_zlopxn.png')
# Package.create!(price_cents: 350000, sku: 'Add-on #7', name: 'CEREMONY', description: 'Virtual Opening Ceremony’s branding and greeting opportunities.', image:'https://res.cloudinary.com/numama/image/upload/v1616861877/DISCOSPORT/7_gs67bq.png')
# Package.create!(price_cents: 350000, sku: 'Add-on #8', name: 'PITCHING', description: 'Pitching Competition’s branding and greeting opportunities.', image:'https://res.cloudinary.com/numama/image/upload/v1618342793/DISCOSPORT/8_rx507s.png')


# puts 'Finished!'

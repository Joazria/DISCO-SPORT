# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


# User.find(20).avatar.purge
# require "open-uri"

# file = URI.open('https://media-exp1.licdn.com/dms/image/C5603AQFf7xo_0YruOQ/profile-displayphoto-shrink_800_800/0/1517353721907?e=1628121600&v=beta&t=lT2Ck8EQLVKxs00jyXq0AwkLp-NUbnw3c0IGpiPkyQ4')
# user = User.find(12)
# user.avatar.attach(io: file, filename: 'nes.png', content_type: 'image/png')


########### UPDATE USER#######
# User.find(41).update!(company: 'FEDERATION IVOIRIENNE DE FOOTBALL AMÉRICAIN')
# User.find(1).update!(
#   country: 'BR')
# User.find(3).update!(
#   country: 'US')
# User.find(4).update!(
#   country: 'IN')
# User.find(5).update!(
#   country: 'US')
# User.find(6).update!(
#   country: 'MU')
# User.find(7).update!(
#   country: 'MU')
# User.find(8).update!(
#   country: 'BW')
# User.find(9).update!(
#   country: 'NG')
# User.find(10).update!(
#   country: 'GB')
# User.find(11).update!(
#   country: 'US')
# User.find(12).update!(
#   country: 'FR')
# User.find(13).update!(
#   country: 'CI')
# User.find(14).update!(
#   country: 'CM')
# User.find(15).update!(
#   country: 'SN')
# User.find(16).update!(
#   country: 'CI')
# User.find(17).update!(
#   country: 'FR')
# User.find(18).update!(
#   country: 'FR')
# User.find(19).update!(
#   country: 'SN')
# User.find(21).update!(
#   country: 'US')
# User.find(22).update!(
#   country: 'FR')
# User.find(23).update!(
#   country: 'BR')
# User.find(24).update!(
#   country: 'GB')
# User.find(25).update!(
#   country: 'FR')
# User.find(26).update(
#   gender:'Mrs',
#   member:'PLATFORM',
#   job: 'Marketing Manager',
#   whatsapp: 'N/A',
#   linkedin: 'https://www.linkedin.com/in/niamurrell/',
#   company:'NBCUniversal Media',
#   activity: 'BROADCASTER | Private',
#   country: 'GB',
#   phone: 'N/A',
#   website:'https://www.nbcuniversal.com/')
# User.find(28).update!(
#   country: 'US')
# User.find(29).update!(
#   country: 'KE')
# User.find(30).update!(
#   country: 'CI')
# User.find(31).update!(
#   country: 'CI')
# User.find(32).update(
#   gender:'Mrs',
#   member:'CONTENT CREATOR',
#   job: 'Partner Manager',
#   whatsapp: 'N/A',
#   linkedin: 'hhttps://www.linkedin.com/in/folukemi-ikhalea/',
#   company:'BRANDCHICKS',
#   activity: 'DIGITAL MARKETING AGENCY',
#   country: 'NG',
#   phone: 'N/A',
#   website:'N/A')
# User.find(33).update!(
#   country: 'CA')
# User.find(34).update!(
#   country: 'SG')
# User.find(35).update!(
#   company:'HEKIMA NETWORKS',
#   country: 'RW')
# User.find(36).update!(
#   country: 'US')
# User.find(37).update!(
#   country: 'ZA')
# User.find(38).update!(
#   country: 'ZA')
# User.find(39).update!(
#   country: 'US')
# User.find(40).update!(
#   country: 'CI')
# User.find(41).update!(
#   country: 'CI')
# User.find(42).update!(
#   country: 'BR')
# User.find(44).update!(
#   country: 'MX')
# User.find(48).update!(
#   country: 'US')
# User.find(49).update!(
#   country: 'DE')
# User.find(50).update!(
#   country: 'US')
# User.find(18).update(
#   gender:'Mr',
#   member:'PLATFORM',
#   job: 'Media Rights',
#   whatsapp: '+5521996995765',
#   linkedin: 'https://www.linkedin.com/in/richardsarris/',
#   company:'BLAST',
#   activity: 'VIDEO GAMING PLATFORM',
#   country: 'BR',
#   phone: '+5521996995765',
#   website:'https://blastpremier.com/')



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

# Identity.create!(user_id: 18,
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

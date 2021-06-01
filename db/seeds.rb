# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# User.find(20).avatar.purge

# require "open-uri"
# file = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQE4xTqwRA3_6Q/profile-displayphoto-shrink_200_200/0/1618242624718?e=1628121600&v=beta&t=PVtJWiBB_lGd1BdlyWxGtqV5vGCCDgFnMhQEDuPVBzU')
# user = User.find(20)
# user.avatar.attach(io: File.open('../app/assets/images'), filename: 'sk.jpeg')
# require "open-uri"

# require "open-uri"

# file = URI.open('https://media-exp1.licdn.com/dms/image/C4E03AQE4xTqwRA3_6Q/profile-displayphoto-shrink_200_200/0/1618242624718?e=1628121600&v=beta&t=PVtJWiBB_lGd1BdlyWxGtqV5vGCCDgFnMhQEDuPVBzU')
# user = User.find(20)
# user.avatar.attach(avatar: file)



########### to do avatar#######
# 12 / 26 / 10 /9 / 7
User.find(24).update(
  gender:'Mr',
  member:'PLATFORM',
  job: 'Senior Manager | Media Rights',
  whatsapp: 'N/A',
  linkedin: 'https://www.linkedin.com/in/richardsarris/',
  company:'BLAST',
  activity: 'VIDEO GAMING PLATFORM',
  country: 'UK',
  phone: 'N/A',
  website:'https://blastpremier.com/')

User.find(22).update(
  gender:'Mr',
  job: 'Attaché Culturel',
  whatsapp: 'N/A',
  linkedin: 'https://www.linkedin.com/in/matthieu-thibaudault/',
  company:'Ministère des Affaires étrangères',
  activity: 'PUBLIC ORGANISATION',
  country: 'France',
  phone: 'N/A',
  website:'N/A')

User.find(7).update(
  gender:'Mr',
  linkedin: 'https://www.linkedin.com/in/yuveshen-darmalingum-a7a71416b/')

User.find(9).update(
  gender:'Mr',
  member: 'VENDOR')

# User.find(19).update(
#   gender:'Mrs',
#   job: 'Attaché Culturel ',
#   whatsapp: 'N/A',
#   linkedin: 'https://www.linkedin.com/in/matthieu-thibaudault/',
#   company:'Ministère de l Europe et des Affaires étrangères',
#   activity: 'PUBLIC ORGANISATION',
#   country: 'France',
#   phone: 'N/A',
#   website:' ')
# User.find(7).update(
#   gender:'Mr',
#   linkedin: 'https://www.linkedin.com/in/yuveshen-darmalingum-a7a71416b/')
# User.find(9).update(
#   gender:'Mr',
#   member: 'VENDOR')


# END OF.



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
# User.find(42).update(
#   gender:'Mr',
#   job: 'Director / Consultant',
#   whatsapp: '+5521986640688',
#   linkedin: 'https://www.linkedin.com/in/patrick-zuchowicki-1b70379/',
#   company:'RADIO EDISON',
#   activity: 'ADVERTISING AGENCY',
#   country: 'Brazil',
#   phone: '+5521986640688',
#   website:'www.radioedison.com.br')
# User.find(41).update(
#   gender:'Mr',
#   job: 'President',
#   whatsapp: '+2250102656574',
#   linkedin: 'https://www.linkedin.com/in/patrick-zuchowicki-1b70379/',
#   company:'FIFAM - FEDERATION IVOIRIENNE DE FOOTBALL AMÉRICAIN',
#   activity: 'SPORTS FEDERATION',
#   country: 'Côte d’Ivoire',
#   phone: '+2250102656574',
#   website:'www.goldeneaglescorporate.com')
# User.find(40).update(
#   gender:'Mr',
#   job: 'Vice President',
#   whatsapp: '+2250101076793',
#   linkedin: 'https://www.linkedin.com/in/patrick-zuchowicki-1b70379/',
#   company:'AMERICAN FOOTBALL CLUB - RIVIERA GOLF GOLDEN EAGLES',
#   activity: 'SPORTING CLUB',
#   country: 'Côte d’Ivoire',
#   phone: '+2250101076793',
#   website:'www.goldeneaglescorporate.com')
# User.find(39).update(
#   gender:'Mr',
#   job: 'Founder',
#   whatsapp: '+18187265973',
#   linkedin: 'https://www.linkedin.com/in/timwahl/',
#   company:'PRESS',
#   activity: 'Founder',
#   country: 'USA',
#   phone: '8187265973',
#   website:'www.mrfootballogy.com')
# User.find(37).update(
#   gender:'Mr',
#   job: 'HOD',
#   whatsapp: '+18187265973',
#   linkedin: 'https://www.linkedin.com/in/khanyomjamba/',
#   company:'GABA MEDIA',
#   activity: 'TV RIGHTS DISTRIBUTOR',
#   country: 'South Africa',
#   phone: '+27824006870',
#   website:'https://gabamedia.co.za/sales-and-distribution/')
# User.find(36).update(
#   gender:'Mr',
#   job: 'Owner',
#   whatsapp: '+16152829629',
#   linkedin: 'https://www.linkedin.com/in/timwahl/',
#   company:' DRIES PRINSLOO',
#   activity: 'STREAMING PLATFORM',
#   country: 'USA',
#   phone: '+16152829629',
#   website:'www.nmbctv.com')
# User.find(35).update(
#   gender:'Mr',
#   member: 'VENDOR',
#   job: 'Business Development Manager',
#   whatsapp: '+250782394170',
#   linkedin: 'https://www.linkedin.com/in/james-njugi-31082238/',
#   company:' DRIES PRINSLOO',
#   activity: 'EQUIPMENT / NEW TECH DISTRIBUTION',
#   country: 'Rwanda',
#   phone: '+250782394170',
#   website:'www.hekimanetworks.com')
# User.find(34).update(
#   gender:'Mrs',
#   member: 'VENDOR',
#   job: 'Business Development Manager',
#   whatsapp: '+6598580309',
#   linkedin: 'https://www.linkedin.com/in/gleyce-soares-freire-07608316/',
#   company:'BOMANBRIDGE MEDIAO',
#   activity: 'TV RIGHTS DISTRIBUTOR',
#   country: 'Singapore',
#   phone: '98580309',
#   website:'https://bomanbridge.tv/')
# User.find(31).update(
#   gender:'Mr',
#   member: 'STAFF',
#   job: 'Administrative Manager',
#   whatsapp: '+2250759690637',
#   linkedin: 'https://www.linkedin.com/events/6780296446915829760/',
#   company:'BASIC LEAD | DISCOSPORT',
#   activity: 'Organizer',
#   country: 'Côte d’Ivoire',
#   phone: '+2250759690637',
#   website:'https://discosport.tv/')
# User.find(29).update(
#   gender:'Mrs',
#   member: 'SPORTS FEDERATION',
#   job: 'Strategic Advisor',
#   whatsapp: 'N/A',
#   linkedin: 'https://www.linkedin.com/events/6780296446915829760/',
#   company:'AFRICA ESPORTS CHAMPIONSHIP',
#   activity: 'SPORTS FEDERATION',
#   country: 'Kenya',
#   phone: 'N/A',
#   website:'https://aec.africa/')
# User.find(28).update(
#   gender:'Mr',
#   member: 'STAFF',
#   job: 'Content Director',
#   whatsapp: '+14349898379',
#   linkedin: 'https://www.linkedin.com/events/6780296446915829760/',
#   company:'BASIC LEAD | DISCOSPORT',
#   activity: 'Organizer',
#   country: 'USA',
#   phone: '+14349898379',
#   website:'https://discosport.tv/')
# User.find(25).update(
#   gender:'Mr',
#   member: 'ADVERTISER',
#   job: 'HEAD OF MARKETING',
#   whatsapp: 'N/A',
#   linkedin: 'https://www.linkedin.com/in/damien-legeai-ab08b010/',
#   company:'CANAL+ ADVERTISING',
#   activity: 'BROADCASTER | Private',
#   country: 'France',
#   phone: 'N/A',
#   website:'https://www.canalplusadvertising.com/')
# User.find(23).update(
#   gender:'Mr',
#   member: 'STAFF',
#   job: 'STAFF',
#   whatsapp: '+5511992925023',
#   linkedin: 'https://www.linkedin.com/in/danniel-tung-827178114/',
#   company:'BIRDS COMMUNICATIONS',
#   activity: 'DIGITAL MARKETING AGENCY',
#   country: 'Brasil',
#   phone: '+5511992925023',
#   website:'www.birds.art.br')
# User.find(21).update(
#   gender:'Mrs',
#   member: 'VENDOR',
#   job: 'Vice President of sales',
#   whatsapp: 'N/A',
#   linkedin: 'https://www.linkedin.com/in/julie-paquit-97408699/',
#   company:'VMI Worldwide',
#   activity: 'MEDIA RIGHTS DISTRIBUTOR',
#   country: 'France',
#   phone: 'N/A',
#   website:'http://vmiworldwide.com/')
# User.find(18).update(
#   gender:'Mrs',
#   member: 'PLATFORM',
#   job: 'Director of Sport & TV Business Development',
#   whatsapp: 'N/A',
#   linkedin: 'https://www.linkedin.com/in/ariane-seta-debaisieux-4aa4902/',
#   company:'ORANGE',
#   activity: 'MOBILE OPERATOR',
#   country: 'France',
#   phone: 'N/A',
#   website:'/www.orange.fr')
# User.find(17).update(
#   gender:'Mr',
#   member: 'PLATFORM',
#   job: 'Chef de projet Business Development Sport ',
#   whatsapp: 'N/A',
#   linkedin: 'https://www.linkedin.com/in/jean-nicolas-lussiana-5862102b/',
#   company:'ORANGE',
#   activity: 'MOBILE OPERATOR',
#   country: 'France',
#   phone: 'N/A',
#   website:'/www.orange.fr')

# Identity.create!(user_id: 3,
#   company:'Basic Lead',
#   country: 'United States',
#   activity: 'ADVERTISING AGENCY',
#   website:'www.basiclead.com',
#   gender:'Mr',
#   phone: '+13109806872',
#   whatsapp: '+13109806872',
#   linkedin: 'https://www.linkedin.com/in/patrick-zuchowicki-1b70379/',
#   release: 'I am the organizer',
#   member: 'INVESTIGATE OPPORTUNITIES',
#   job: 'CEO')

#   movies = Movie.create([{ name: 'Star Wars' },{ name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# puts 'Creating Package Identities...'

# Identity.create!(user_id: 6,
#   company:'',
#   country: 'Mauritius',
#   activity: 'PRODUCTION COMPANY',
#   website:'www.capitalmedia.mu',
#   gender:'Mr',
#   phone: '+23052512223',
#   whatsapp: '+23052512223',
#   linkedin: 'https://www.linkedin.com/events/discosport100-virtual6780296446915829760/',
#   release: 'I am a TV producer and also consulting on an upcoming streaming project. I am attending Discosport to explore opportunities in sports productions and also potential acquisitions/ co-productions in sport content.',
#   member: 'INVESTIGATE OPPORTUNITIES',
#   job: '')

# Identity.create!(user_id: 8,
#   company:'Baboneng Film Production & Entertainment (PTY) Ltd',
#   country: 'Botswana',
#   activity: 'PRODUCTION COMPANY',
#   website:'www.babonengfilms.com',
#   gender:'Mr',
#   phone: '+267 74 188 020',
#   whatsapp: '+267 74 188 020',
#   linkedin: 'https://www.linkedin.com/events/discosport100-virtual6780296446915829760/',
#   release: 'My company is the first to outside live broadcast here in Botswana. I have signed up exclusive broadcast rights with 9 different sporting codes. I want to participate on how best we can help Sub-Saharan African athletes in terms of international exposure through the power of television. Also I want to participate on how best we can monetise this sporting content rights across our African continent.',
#   member: 'PRODUCE / CO-PRODUCE CONTENT',
#   job: 'Managing Director')

# Identity.create!(user_id: 11,
#   company:'Sun People Productions',
#   country: 'United States',
#   activity: 'PRODUCTION COMPANY',
#   website:'www.sunpeopleproductions.com',
#   gender:'Mr',
#   phone: '3128180221',
#   whatsapp: '',
#   linkedin: 'https://www.linkedin.com/events/discosport100-virtual6780296446915829760/',
#   release: '',
#   member: 'ACQUIRE VISIBILITY',
#   job: '')

# Identity.create!(user_id: 12,
#   company:'WOURI ENTERTAINMENT',
#   country: 'France',
#   activity: 'STREAMING PLATFORM',
#   website:'www.wouri.tv',
#   gender:'Mr',
#   phone: '0647070824',
#   whatsapp: '+33647070824',
#   linkedin: 'https://www.linkedin.com/in/patrick-kengne-kamga-8413b767/',
#   release: '',
#   member: 'ACQUIRE VISIBILITY',
#   job: 'CEO')

# Identity.create!(user_id: 13,
#   company:'AFRIKA TOON',
#   country: 'Côte d Ivoire',
#   activity: 'PRODUCTION COMPANY',
#   website:'www.afrikatoon.com',
#   gender:'Mr',
#   phone: '+2250707557745',
#   whatsapp: '+2250707557745',
#   linkedin: 'https://www.linkedin.com/in/kouame-n-abel-1684b419/',
#   release: 'Created in 2005, Afrika Toon is among the few animated\r\nfilm leaders.\r\nComposed of talented artists and confirmed graphic\r\ndesigners, Afrika Toon is a homogeneous team that works\r\nwith rigor to create high quality content.\r\nTo push its ambitions, Afrika Toon invests in computer equipment. Thus, the equipement has been intentionally reinforced to adapt it to 2D and 3D. As for the graphic designers, they had a solid training and mastered perfectly softwares dedicated to animation (Autodesk Maya, Toon boom, Anime Studio, After effect ...). As part of the ongoing training, internal training workshops are organized at regular intervals to allow graphic designers to be up to date because, software and animation techniques evolve very quickly.',
#   member: 'INVESTIGATE OPPORTUNITIES',
#   job: '')

# Identity.create!(user_id: 13,
#   company:'CS COMMUNICATIONS',
#   country: 'Cameroun',
#   activity: 'PRODUCTION COMPANY',
#   website:'www.cscommunications.net',
#   gender:'Mr',
#   phone: '+237694131598',
#   whatsapp: '+237694131598',
#   linkedin: 'https://www.linkedin.com/in/christian-tchamen-31788a101/',
#   release: 'We are a audiovisual production and digital marketing company. We wanted to create new opportunities to sell our contents.',
#   member: 'INVESTIGATE OPPORTUNITIES',
#   job: 'Manager')

# Identity.create!(user_id: 16,
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

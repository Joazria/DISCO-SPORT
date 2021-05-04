# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' },{ name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Package Identities...'

Identity.create!(user_id: 6,
  company:'Capital Media',
  country: 'Mauritius',
  activity: 'PRODUCTION COMPANY',
  website:'www.capitalmedia.mu',
  gender:'Mr',
  phone: '+23052512223',
  whatsapp: '+23052512223',
  linkedin: 'https://www.linkedin.com/events/discosport100-virtual6780296446915829760/',
  release: 'I am a TV producer and also consulting on an upcoming streaming project. I am attending Discosport to explore opportunities in sports productions and also potential acquisitions/ co-productions in sport content.',
  member: 'INVESTIGATE OPPORTUNITIES',
  job: '')

Identity.create!(user_id: 8,
  company:'Baboneng Film Production & Entertainment (PTY) Ltd',
  country: 'Botswana',
  activity: 'PRODUCTION COMPANY',
  website:'www.babonengfilms.com',
  gender:'Mr',
  phone: '+267 74 188 020',
  whatsapp: '+267 74 188 020',
  linkedin: 'https://www.linkedin.com/events/discosport100-virtual6780296446915829760/',
  release: 'My company is the first to outside live broadcast here in Botswana. I have signed up exclusive broadcast rights with 9 different sporting codes. I want to participate on how best we can help Sub-Saharan African athletes in terms of international exposure through the power of television. Also I want to participate on how best we can monetise this sporting content rights across our African continent.',
  member: 'PRODUCE / CO-PRODUCE CONTENT',
  job: 'Managing Director')

Identity.create!(user_id: 11,
  company:'Sun People Productions',
  country: 'United States',
  activity: 'PRODUCTION COMPANY',
  website:'www.sunpeopleproductions.com',
  gender:'Mr',
  phone: '3128180221',
  whatsapp: '',
  linkedin: 'https://www.linkedin.com/events/discosport100-virtual6780296446915829760/',
  release: '',
  member: 'ACQUIRE VISIBILITY',
  job: '')

Identity.create!(user_id: 12,
  company:'WOURI ENTERTAINMENT',
  country: 'France',
  activity: 'STREAMING PLATFORM',
  website:'www.wouri.tv',
  gender:'Mr',
  phone: '0647070824',
  whatsapp: '+33647070824',
  linkedin: 'https://www.linkedin.com/in/patrick-kengne-kamga-8413b767/',
  release: '',
  member: 'ACQUIRE VISIBILITY',
  job: 'CEO')

Identity.create!(user_id: 13,
  company:'AFRIKA TOON',
  country: 'Côte d Ivoire',
  activity: 'PRODUCTION COMPANY',
  website:'www.afrikatoon.com',
  gender:'Mr',
  phone: '+2250707557745',
  whatsapp: '+2250707557745',
  linkedin: 'https://www.linkedin.com/in/kouame-n-abel-1684b419/',
  release: 'Created in 2005, Afrika Toon is among the few animated\r\nfilm leaders.\r\nComposed of talented artists and confirmed graphic\r\ndesigners, Afrika Toon is a homogeneous team that works\r\nwith rigor to create high quality content.\r\nTo push its ambitions, Afrika Toon invests in computer equipment. Thus, the equipement has been intentionally reinforced to adapt it to 2D and 3D. As for the graphic designers, they had a solid training and mastered perfectly softwares dedicated to animation (Autodesk Maya, Toon boom, Anime Studio, After effect ...). As part of the ongoing training, internal training workshops are organized at regular intervals to allow graphic designers to be up to date because, software and animation techniques evolve very quickly.',
  member: 'INVESTIGATE OPPORTUNITIES',
  job: '')

Identity.create!(user_id: 13,
  company:'CS COMMUNICATIONS',
  country: 'Cameroun',
  activity: 'PRODUCTION COMPANY',
  website:'www.cscommunications.net',
  gender:'Mr',
  phone: '+237694131598',
  whatsapp: '+237694131598',
  linkedin: 'https://www.linkedin.com/in/christian-tchamen-31788a101/',
  release: 'We are a audiovisual production and digital marketing company. We wanted to create new opportunities to sell our contents.',
  member: 'INVESTIGATE OPPORTUNITIES',
  job: 'Manager')

Identity.create!(user_id: 16,
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

 puts 'Finished!'

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

ActionMailer::Base.smtp_settings = {
  address: "smtp.discosport.tv",
  port: 465,
  domain: 'www.discosport.tv',
  user_name: "contact@discosport.tv",
  password: ENV['DISCOSPORT_APP_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}

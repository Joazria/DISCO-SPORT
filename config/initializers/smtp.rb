ActionMailer::Base.smtp_settings = {
  address: "smtp.discosport.tv",
  port: 465,
  domain: 'discosport.tv',
  user_name: ENV["DISCOSPORT_APP_USER"],
  password: ENV["DISCOSPORT_APP_PASSWORD"],
  authentication: :plain,
  enable_starttls_auto: true
}

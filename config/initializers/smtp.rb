# ActionMailer::Base.smtp_settings = {
#   address: "smtp.gmail.com",
#   port: 587,
#   domain: 'gmail.com',
#   user_name: ENV['GMAIL_ADDRESS'],
#   password: ENV['GMAIL_APP_PASSWORD'],
#   authentication: :login,
#   enable_starttls_auto: true
# }

ActionMailer::Base.smtp_settings = {
  address: "smtp.dreamhost.com",
  port: 587,
  domain: 'discosport.tv',
  user_name: ENV['DISCOSPORT_APP_USER'],
  password: ENV['DISCOSPORT_APP_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}

# ActionMailer::Base.smtp_settings = {
#   address: "smtpout.secureserver.net",
#   port: 465,
#   # domain: 'discosport.app',
#   domain: 'godaddy.com',
#   user_name: ENV['DISCOSPORT_APP_USER'],
#   password: ENV['DISCOSPORT_APP_PASSWORD'],
#   authentication: :login,
#   enable_starttls_auto: true
# }

# ActionMailer::Base.smtp_settings = {
#   :address              => "mail.discosport.tv",
#   :port                 => 587,
#   :domain               => "www.discosport.tv",
#   :user_name            => ENV['DISCOSPORT_APP_USER'],
#   :password             => ENV['DISCOSPORT_APP_PASSWORD'],
#   :authentication       => :login,
#   :enable_starttls_auto => :false
# }

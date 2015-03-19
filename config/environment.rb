# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Configuration for using SendGrid on Heroku
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => ENV['app35043956@heroku.com'],
    :password       => ENV['Br0k3nh@ck0rz'],
    :domain         => 'gracemika-wedding.herokuapp.com',
    :enable_starttls_auto => true
  }

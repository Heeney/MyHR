ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address          => 'smtp.sendgrid.net',
  :port             => '587',
  :authentication   => :plain,
  :user_name        => 'app39609678@heroku.com',
  :password         => 'fo0dfsls5760',
  :domain           => 'salty-spire-1087.herokuapp.com',
  :enable_starttls_auto => true
 }
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "smtp.gmail.com",
  :user_name            => "",
  :password             => "",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

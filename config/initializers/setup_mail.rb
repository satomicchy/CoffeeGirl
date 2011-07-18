ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "smtp.gmail.com",
  :user_name            => "girl.meets.coffee",
  :password             => "coffeescript@kansai",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

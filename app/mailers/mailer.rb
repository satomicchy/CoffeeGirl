class Mailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.contact.subject
  #
  def contact(input)
    @body = input[:body]
    @email = input[:email]
    @name = input[:name]

    mail to: "satomi.t.sora@gmail.com", subject: "from Coffee web site"
  end
end

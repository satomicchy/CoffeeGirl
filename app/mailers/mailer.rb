# -*- coding: utf-8 -*-
class Mailer < ActionMailer::Base
  default to: "girl.meets.coffee@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailer.contact.subject
  #
  def contact(input)
    @letter = input[:letter]
    @email = input[:email]
    @name = input[:name]

    mail from: "#{@email}", subject: "#{@name} さんからメッセージが届いています。(Coffee女子会サイトより)"
  end
end

# frozen_string_literal: true

class NewsletterMailer < ApplicationMailer
  default from: 'rubymasterybrasil@gmail.com'

  def signup(user)
    @user = user
    mail({
      to: "#{user.email}",
      subject: "#{user.name}, Bem vindo a CreativeLabs"
    })
  end

  def cancel(user)
    @user = user
    mail({
      to: "#{user.email}",
      subject: "#{user.name}, já esta indo embora?"
    })
  end
end
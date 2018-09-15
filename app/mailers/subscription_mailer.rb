# frozen_string_literal: true

class SubscriptionMailer < ApplicationMailer

	default from: 'rubymasterybrasil@gmail.com'
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.subscription_mailer.signup.subject
  #
  def signup(subscription)
    @subscription = subscription
    mail({
    	to: subscription.email,
    	subject: "#{subscription.first_name + " " + subscription.last_name}, Parabéns por esse grande passo."
    })
  end
end

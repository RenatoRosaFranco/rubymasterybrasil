# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  default from: 'rubymasterybrasil@gmail.com'

  def sended(contact)
    @contact = contact
    mail({
      to: 'rubymasterybrasil@gmail.com',
      subject: "Novo e-mail para RubyMastery enviado por #{contact.name}"
    })
  end

  def received(contact)
    @contact = contact
    mail({
      to: contact.email,
      subject: "#{contact.name}, Recebemos seu e-mail com sucesso."
    })
  end
end

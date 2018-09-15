# frozen_string_literal: true

class ContactMailer < ApplicationMailer

  default from: 'contato@crativelabs.com.br'

  def sended(contact)
    @contact = contact
    mail({
      to: 'contato@crativelabs.com.br',
      subject: "Novo e-mail para CreativeLabs enviado por #{contact.name}"
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

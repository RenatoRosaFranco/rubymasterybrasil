# frozen_string_literal: true

class Contact < Object
	include ActiveModel::Conversion
	include ActiveModel::Validations
	include MailerInterfaceable

	attr_accessor :name, :phone, :email, :subject, :message

	def initialize(params = {})
		@name 	 = params[:name]
		@phone   = params[:phone]
		@email	 = params[:email]
		@subject = params[:subject]
		@message = params[:message]
	end

	def persisted?
		false
	end

	def sendEmail
		mailTo ContactMailer, :sended,   self, :deliver_now
		mailTo ContactMailer, :received, self, :deliver_now
	end

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :phone,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 20 }

	validates :email,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length:{ minimum: 3, maximum: 145 }

	validates :subject,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 60 }

	validates :message,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 5_000 }
end
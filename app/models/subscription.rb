# frozen_string_literal: true

class Subscription < ApplicationRecord
	include MailerInterfaceable

	self.table_name = 'subscriptions'
	self.primary_key = 'id'

	after_create :sendEmail

	def sendEmail
		mailTo SubscriptionMailer, :signup, self, :deliver_now
	end

	validates :first_name, :last_name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :phone,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 25 }

	validates :email,
						presence: true,
						uniqueness: true,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :birthdate,
						presence: true,
						uniqueness: false,
						allow_blank: false

	validates :gender,
						presence: true,
						uniquenesS: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }

	validates :experience,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 30 }
end

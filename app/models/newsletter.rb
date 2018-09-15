# frozen_string_literal: true

class Newsletter < ApplicationRecord
	include MailerInterfaceable
	include NewsletterInterfaceable

	self.table_name = 'newsletters'
	self.primary_key = 'id'

	enum status: [:enabled, :disabled]
	after_create :signup

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 50 }

	validates :email,
						presence: true,
						uniqueness: true,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :token,
						uniqueness: true
end

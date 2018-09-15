# frozen_string_literal: true

module NewsletterInterfaceable
	include ActiveSupport::Concern

	def signup
		set_token
		set_status(:enabled)
		set_signup_date
		save
		mailTo NewsletterMailer, :signup, self, :deliver_now
	end 

	def cancel
		remove_token
		set_status(:disabled)
		save
		mailTo NewsletterMailer, :cancel, self, :deliver_now
	end

	private
		def set_token
			self.token = SecureRandom.urlsafe_base64
		end

		def remove_token
			self.token = nil
		end

		def set_status(status = :enable)
			self.status = status
		end

		def set_signup_date(date = Date.today)
			self.signup_date = date
		end
end
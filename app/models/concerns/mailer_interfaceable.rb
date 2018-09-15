# frozen_string_literal: true

module MailerInterfaceable
	include ActiveSupport::Concern

	def mailTo(klass, method, object, deliver_method = :deliver_now)
		klass.send(method, object).send(deliver_method)
	end
end
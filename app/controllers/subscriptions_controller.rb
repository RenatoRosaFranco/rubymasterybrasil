# frozen_string_literal: true

class SubscriptionsController < ApplicationController
	def create
		subscription = Subscription.new(subscription_params)
		if subscription.save
			redirect_to root_path, notice: 'Inscrição realizada com sucesso.'
		else
			redirect_to root_path, error: 'Falha ao realizar inscrição, tente novamente.'
		end
	end

	private
		def subscription_params
			params.require(:subscription)
				.permit(:first_name, :last_name, :phone, :email, :birthdate, :gender, :experience, :ruby, :rails, :mysql, :git)
		end
end
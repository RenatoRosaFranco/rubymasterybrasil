# frozen_string_literal: true

class NewslettersController < ApplicationController
	def create
		newsletter = Newsletter.new(newsletter_params)
		if newsletter.save
			redirect_to root_path, notice: 'Cadastro efetuado com sucesso.'
		else
			redirect_to root_path, error: 'Falha ao efetuar cadastro, tente novamente.'
		end
	end

	private
		def newsletter_params
			params.require(:newsletter).permit(:name, :email)
		end
end

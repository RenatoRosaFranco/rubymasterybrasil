require "application_responder"

# frozen_string_literal: true

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  add_flash_types :success, :info, :error
  protect_from_forgery with: :exception
end
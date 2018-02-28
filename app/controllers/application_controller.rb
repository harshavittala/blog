class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :authenticate_user!, unless: :open_action

	protected
		def open_action
			return true if (params[:controller] == "posts" and ["show", "index"].include?(params[:action]))
		end
end

class ApplicationController < ActionController::Base
	before_action :set_locale 

	private 

	# setting locale if present in the url
	def set_locale 
		I18n.locale = extract_locale || I18n.default_locale 
	end 

	# makes sure that the locale is from en and ms
	def extract_locale 
		parsed_locale = params[:locale] 
		I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil 
	end
end

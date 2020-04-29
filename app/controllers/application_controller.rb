class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    before_action :set_locale

    private 
    def set_locale
        I18n.locale = #params[:locale] || I18n.default_locale
        puts "#{I18n.locale} o mai gad"
        # current_user.locale
        # request.env["HTTP_ACCEPT_LANGUAGE"]
    end

    def default_url_options(options = {})
        {locale: I18n.locale}.merge options
    end
end

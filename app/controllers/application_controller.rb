class ApplicationController < ActionController::Base
  before_action :set_locale
  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { locale: I18n.locale }
  end

  # Devise - redirection après sign in
  def after_sign_in_path_for(resource)
    stored_location_for(resource) || admin_path
  end
  # Fin Devise

  private

    def set_locale
      if I18n.available_locales.include?(params[:locale]&.to_sym)
        I18n.locale = params[:locale]
      else
        redirect_to "/#{I18n.default_locale}"
      end
    end

end

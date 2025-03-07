class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    locale = params[:locale]&.strip&.to_sym
    I18n.locale = if I18n.available_locales.include?(locale)
                    locale
                  else
                    I18n.default_locale
                  end
  end
end

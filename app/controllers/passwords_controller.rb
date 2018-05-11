class PasswordsController < Devise::PasswordsController
  prepend_before_action :check_captcha, only: [:create]

  private

  def check_captcha
    unless verify_recaptcha
      redirect_back fallback_location: root_path
    end
  end

end

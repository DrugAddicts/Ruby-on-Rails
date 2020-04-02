class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  include SessionsHelper

  private

  def require_login
    unless signed_in?
      redirect_to sessions_login_path
    end
  end
end

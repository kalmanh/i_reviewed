class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :ensure_login

  protected
    def ensure_login
      redirect_to login_path unless logged_in?
    end

    def logged_in?
      session[:reviewer_id]
    end

    def current_user
      @current_user ||= Reviewer.find(session[:reviewer_id])
    end

    helper_method :logged_in?, :current_user
end

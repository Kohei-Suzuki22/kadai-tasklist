class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include SessionsHelper
  
  private
  
  def require_uer_logged_in
    unless logged_in?
      redirect_to root_url
    end
  end
end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #
  # protect_from_forgery with: :exception

  protect_from_forgery
 
  private
 
  def authenticate
    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == 'ksj' && password == '123'
    end
  end
end

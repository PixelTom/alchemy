class ApplicationController < ActionController::Base
    before_action :password_protect

  private

  def password_protect
    return unless ENV['PASSWORD'].present?
    authenticate_or_request_with_http_basic("My Site, not yours") do |password|
      password == ENV['PASSWORD']
    end
  end

 end
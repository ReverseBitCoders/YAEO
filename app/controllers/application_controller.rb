require 'dm-rails/middleware/identity_map'
class ApplicationController < ActionController::Base
  use Rails::DataMapper::Middleware::IdentityMap
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
    flash[:alert] = "Access denied!"
    redirect_to root_url
  end
end

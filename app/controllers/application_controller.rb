class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def layout_vars
    @view_asset_path = "views/#{params[:controller]}/#{params[:action]}"
    @controller_asset_path = "controllers/#{params[:controller]}"
  end
end

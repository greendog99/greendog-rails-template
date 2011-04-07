class ApplicationController < ActionController::Base

  protect_from_forgery

  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  # Render a templated "Not Found" page via app/views/custom_pages/404.html.haml
  def render_404
    render 'custom_pages/404', :status => :not_found, :layout => 'one_column'
    return true
  end

end

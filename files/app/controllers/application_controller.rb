class ApplicationController < ActionController::Base

  protect_from_forgery

  rescue_from ActiveRecord::RecordNotFound, :with => :render_404

  # Render an attractive "Not Found" page using the normal template
  def render_404
    render 'custom_pages/404', :status => :not_found, :layout => 'one_column'
    return true
  end

end

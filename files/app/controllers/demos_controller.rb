class DemosController < ApplicationController

  def show
    flash.now[:alert] = "This is an alert"
    flash.now[:notice] = "This is a notice"
  end

end

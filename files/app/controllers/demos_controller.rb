class DemosController < ApplicationController

  def grid
    flash.now[:alert] = "This is an alert"
    flash.now[:notice] = "This is a notice"
  end

  def text      
    flash.now[:alert] = "This is an alert"
    flash.now[:notice] = "This is a notice"
  end

end

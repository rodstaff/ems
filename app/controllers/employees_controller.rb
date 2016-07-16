class EmployeesController < ApplicationController

  def new
  end

  def create
    render plain: params[:employee].inspect
  end

end

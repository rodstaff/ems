class EmployeesController < ApplicationController

  # attr_accessor :employee

  def index
  	@employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
  end

  # def create
  #   render plain: params[:employee].inspect
  # end

  # def create
  # @employee = Employee.new(params[:employee])
 
  # @employee.save
  # redirect_to @employee
  # end

  #Below are modified methods improved for security
  def create
    @employee = Employee.new(employee_params)
 
    if  @employee.save
      redirect_to @employee
    else
      render 'new'
    end
  end

  def update
    @employee = Employee.find(params[:id])
 
    if @employee.update(employee_params)
      redirect_to @employee
    else
      render 'edit'
    end
  end
 
  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email)
  end

end

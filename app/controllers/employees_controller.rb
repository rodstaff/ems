class EmployeesController < ApplicationController

  # attr_accessor :employee

  def index
  	@employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find(params[:id])
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

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
 
    redirect_to employees_path
  end
 
  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email)
  end

end

class CarsController < ApplicationController

  http_basic_authenticate_with name: "rod", password: "secret", only: :destroy

  def create
    @employee = Employee.find(params[:employee_id])
    @car = @employee.cars.create(car_params)
    redirect_to employee_path(@employee)
  end

  def destroy
    @employee = Employee.find(params[:employee_id])
    @car = @employee.cars.find(params[:id])
    @car.destroy
    redirect_to employee_path(@employee)
  end
 
  private
    def car_params
      params.require(:car).permit(:model, :note)
    end

end

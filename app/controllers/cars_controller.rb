class CarsController < ApplicationController
  def index
    @cars = Car.all
    render template: "cars/index"
  end

  def create
    @car = Car.create(
      car_make: params[:car_make],
      car_model: params[:car_model],
      year: params[:year]
    )
    render :show
  end
end

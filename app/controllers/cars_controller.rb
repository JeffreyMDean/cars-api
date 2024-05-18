class CarsController < ApplicationController
  def index
    @cars = Car.all
    render template: "cars/index"
  end
end

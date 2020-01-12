class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render "index.json.jb"
  end

  def create
    @car = Car.new(
      seller_id: current_user.id,
      make: params[:make],
      model: params[:model],
      year: params[:year],
      color: params[:color],
    )
    @car.save
    render "show.json.jb"
  end

  def show
    @car = Car.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.year = params[:year] || @car.year
    @car.color = params[:color] || @car.color
    @car.save
    render "show.json.jb"
  end

  def destroy
    @car = Car.find_by(id: params[:id])
    @car.destroy
    render json: { message: "Car was deleted!" }
  end
end

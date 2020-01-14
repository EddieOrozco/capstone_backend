class Api::CarsController < ApplicationController
  def index
    if current_user
      @cars = Car.where(seller_id: current_user.id)
      if params[:search]
        @cars = @cars.where("make ILIKE ?", "%#{params[:search]}%")
      end

      @cars = @cars.order(:id => :asc)
      render "index.json.jb"
    else
      render json: []
    end
  end

  def create
    @car = Car.new(
      seller_id: current_user.id,
      make: params[:make],
      model: params[:model],
      year: params[:year],
      color: params[:color],
    )

    if @car.save
      render "show.json.jb"
    else
      render json: { errors: @car.errors.full_messages }, status: 422
    end
  end

  def show
    @car = Car.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @car = current_user.selling_cars.find_by(id: params[:id])
    @car.buyer_id = params[:buyer_id] || @car.buyer_id
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.year = params[:year] || @car.year
    @car.color = params[:color] || @car.color
    if @car.save
      render "show.json.jb"
    else
      render json: { errors: @car.errors.full_messages }, status: 422
    end
  end

  def destroy
    @car = Car.find_by(id: params[:id])
    @car.destroy
    render json: { message: "Car was deleted!" }
  end
end

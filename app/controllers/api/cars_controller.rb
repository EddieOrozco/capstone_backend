class Api::CarsController < ApplicationController
  def index
    @car = Car.first
    render "index.json.jb"
  end
end

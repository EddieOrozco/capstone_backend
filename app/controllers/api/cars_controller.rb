class Api::CarsController < ApplicationController
  def index
    @cars = Car.all
    render "index.json.jb"
  end

  def show
    @model = params["model"]
    render "show.json.jb"
  end
end

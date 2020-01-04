class Api::CarsController < ApplicationController
  def cars
    render "index.json.jb"
  end
end

class Api::MessagesController < ApplicationController
  def create
    car = Car.find_by(id: params[:car_id])
    @message = Message.new(
      text: params[:text],
      sender_id: current_user.id,
      receiver_id: car.seller_id,
      car_id: params[:car_id],
    )

    if @message.save
      render "show.json.jb"
    else
      render json: { errors: @message.errors.full_messages }, status: 422
    end
  end

  def destroy
    @message = Message.find_by(id: params[:id])
    @message.destroy
    render json: { message: "Message was deleted!" }
  end
end

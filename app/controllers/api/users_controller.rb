class Api::UsersController < ApplicationController
  def index
    @users = User.all
    render "index.json.jb"
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render "show.json.jb"
  end

  # def update
  #   @user = User.find_by(id: params[:id])
  #   @user.name = params[:name] || @user.name
  #   @user.email = params[:email] || @user.email
  #   @user.phone = params[:phone] || @user.phone
  #   @user.shop_id = params[:shop_id] || @user.shop_id
  #   @user.save
  #   render "show.json.jb"
  # end
end

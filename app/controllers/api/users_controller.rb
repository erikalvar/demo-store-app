class Api::UsersController < ApplicationController
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
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
    if @user == current_user
      render "show.json.jb"
    else
      render json: {}, status: :unauthorized
    end
  end

  def update
    @user = User.find_by(id: params[:id])
    if @user == current_user
      @user = current_user
      @user.name = params[:name] || @user.name
      @user.email = params[:email] || @user.email

      if params[:password]
        @user.password = params[:password] || @user.password
        @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
      end

      if @user.save
        render "show.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: { message: "User not logged in" }, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user == current_user
      @user.destroy
      render json: { message: "User successfully deleted." }
    else
      render json: {}, status: :unauthorized
    end
  end
end

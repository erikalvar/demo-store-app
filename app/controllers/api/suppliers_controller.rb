class Api::SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def show
    @supplier = Supplier.find(params[:id])
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
      name: params[:name],
      email: params[:email],
      address: params[:address],
      phone_number: params[:phone_number],
    )

    if @supplier.save
      render "show.json.jb"
    else
      render json: { message: "error" }
    end
  end

  def update
    @supplier = Supplier.find(params[:id])

    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.address = params[:address] || @supplier.address
    @supplier.phone_number = params[:phone_number] || @supplier.phone_number

    if @supplier.save
      render "show.json.jb"
    else
      render json: { message: "error" }
    end
  end

  def destroy
    @supplier = Supplier.find(params[:id])

    if @supplier.delete
      render json: { message: "Supplier successfully deleted." }
    else
      render json: { message: "error" }
    end
  end
end

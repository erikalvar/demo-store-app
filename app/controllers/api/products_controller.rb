class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      description: params[:description],
      price: params[:price],
      units: params[:units],
      supplier_id: params[:supplier_id],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { message: "error" }
    end
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.price = params[:price] || @product.price
    @product.units = params[:units] || @product.units
    @product.supplier_id = params[:supplier_id] || @product.supplier_id

    if @product.save
      render "show.json.jb"
    else
      render json: { message: "error" }
    end
  end

  def destroy
    @product = Product.find(params[:id])

    if @product.delete
      render json: { message: "Product successfully deleted" }
    else
      render json: { message: "error" }
    end
  end
end

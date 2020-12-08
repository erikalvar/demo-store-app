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
      specs: params[:specs],
      year: params[:year],
      model: params[:model],
      size: params[:size],
      new_used: params[:new_used],
      origin: params[:origin],
      length: params[:length],
      weight: params[:weight],
      category: params[:category],
      sub_category: params[:sub_category],
      price: params[:price],
      units: params[:units],
      supplier_id: params[:supplier_id],
      current: params[:current],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.description = params[:description] || @product.description
    @product.specs = params[:specs] || @product.specs
    @product.year = params[:year] || @product.year
    @product.model = params[:model] || @product.model
    @product.size = params[:size] || @product.size
    @product.new_used = params[:new_used] || @product.new_used
    @product.origin = params[:origin] || @product.origin
    @product.length = params[:length] || @product.length
    @product.weight = params[:weight] || @product.weight
    @product.category = params[:category] || @product.category
    @product.sub_category = params[:sub_category] || @product.sub_category
    @product.price = params[:price] || @product.price
    @product.units = params[:units] || @product.units
    @product.supplier_id = params[:supplier_id] || @product.supplier_id
    @product.current = params[:current] || @product.current

    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])

    if @product.delete
      render json: { message: "Product successfully deleted" }
    else
      render json: { errors: @order.errors.full_messages }, status: :unprocessable_entity
    end
  end
end

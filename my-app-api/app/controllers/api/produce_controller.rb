class Api::ProduceController < ApplicationController

  def index
    @produce = Produce.all
    render json: @produce
  end

  def create
    product = Produce.new(produce_params)
    if product.save
      render json: product
    else
      render json: { message: product.errors }, status: 400
    end
  end

  def show
    render json: @product
  end

  private

  def set_product
    @product = Produce.find_by(id: params[:id])
  end

  def produce_params
    params.require(:product).permit(:name, :quantity)
  end
end

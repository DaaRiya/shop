class ProductsController < ApplicationController
  def index
    @products = Product.all
    @num = 1
  end

  def bag

  end
end
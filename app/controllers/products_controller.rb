class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def bag

  end
end
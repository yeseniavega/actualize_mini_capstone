class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def one_product_action
    product_id = params["id"]
    @product = Product.find_by(id: product_id)
    render "product.json.jb"
  end
end

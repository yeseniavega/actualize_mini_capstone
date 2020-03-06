Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#index"

    get "/one_product_url" => "products#one_product_action"
    get "/one_product_url/:id" => "products#one_product_action"
  end
end

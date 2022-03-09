class Admin::DashboardController < ApplicationController
  def show
    @number_of_products = Product.count
    @number_of_categories = Category.count
  end

  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"], password: ENV["ADMIN_PASSWORD"]
end

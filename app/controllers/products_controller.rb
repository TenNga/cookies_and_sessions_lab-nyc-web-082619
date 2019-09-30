class ProductController < ApplicationController
  def index 
    @cart = session[:cart]
  end 
  
  def add
    session[:cart] << params[:items]
    redirect_to products_path
  end 
end
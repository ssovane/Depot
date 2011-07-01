class StoreController < ApplicationController
skip_before_filter :authorize

  def index
    if params[:set_locale]
      redirect_to store_path(:locale => params[:set_locale])
    else
      @products = Product.find(:all, :conditions => {:locale => I18n.locale})
      @count = increment_count
      @cart = current_cart
    end  
  end

  def increment_count
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end

end

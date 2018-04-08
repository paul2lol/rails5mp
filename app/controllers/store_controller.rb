class StoreController < ApplicationController
  def index
  	@lineitemcounter = LineItem.all.count
    @products = Product.order(:title)
    @counter = session[:counter]
    @counter.nil? ? @counter = 1 : @counter+=1
    session[:counter] = @counter
    @shown_message = "You have visted #@counter times" if @counter>2
    @cart_message = "< View Cart (#@lineitemcounter)"
  end
end

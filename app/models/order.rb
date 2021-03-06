class Order < ActiveRecord::Base

  has_many :line_items, :dependent => :destroy
  has_one :payment_type

  validates :name, :address, :pay_type, :presence => true
  validates :pay_type, :inclusion => PaymentType.find(:all).map { |p| p.value }

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

end

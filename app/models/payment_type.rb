class PaymentType < ActiveRecord::Base
belongs_to :orders
end

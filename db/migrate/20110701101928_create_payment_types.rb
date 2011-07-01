class CreatePaymentTypes < ActiveRecord::Migration
  def self.up
    create_table :payment_types do |t|
      t.string :name, :null => false
      t.string :value, :null => false
    end

  PaymentType.create(:name => 'Check', :value => "check")
  PaymentType.create(:name => 'Credit card', :value => "cc")
  PaymentType.create(:name => 'Purchase order', :value => "po")

  end

  def self.down
    drop_table :payment_types
  end


end

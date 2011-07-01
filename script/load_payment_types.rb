
PaymentTypes.transaction do
    PaymentTypes.create(:pay_type => "Check")
    PaymentTypes.create(:pay_type => "Credit card")
    PaymentTypes.create(:pay_type => "Purchase order")
end

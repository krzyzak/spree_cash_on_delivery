module Spree
  class PaymentMethod::CashOnDelivery < PaymentMethod
    def payment_profiles_supported?
      true
    end

    def source_required?
      false
    end
  end
end
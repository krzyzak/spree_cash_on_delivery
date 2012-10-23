require "spree_core"
require "spree_cash_on_delivery/version"

module SpreeCashOnDelivery
  class Engine < Rails::Engine
    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end
    config.to_prepare &method(:activate).to_proc

    initializer "spree_cash_on_delivery.register.payment_method", :after => "spree.register.payment_methods" do |app|
      app.config.spree.payment_methods << Spree::PaymentMethod::CashOnDelivery
    end
  end
end
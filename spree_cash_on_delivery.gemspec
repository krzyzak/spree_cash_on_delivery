# -*- encoding: utf-8 -*-
require File.expand_path('../lib/spree_cash_on_delivery/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Michal Krzyzanowski"]
  gem.email         = ["michal.krzyzanowski+github@gmail.com"]
  gem.description   = %q{Cash on delivery payment method for Spree}
  gem.summary       = %q{This gem adds cash on delivery payment method for spree}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "spree_cash_on_delivery"
  gem.require_paths = ["lib"]
  gem.version       = SpreeCashOnDelivery::VERSION
end

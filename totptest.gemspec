# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'totptest/version'

Gem::Specification.new do |spec|
  spec.name          = "totptest"
  spec.version       = TOTPTest::VERSION
  spec.authors       = ["John Slee"]
  spec.email         = ["john.slee@fairfaxmedia.com.au"]

  spec.summary       = %q{Sinatra webservice for testing TOTP}
  spec.description   = %q{Sinatra webservice for testing TOTP}
  spec.homepage      = "https://github.com/indigoid/totptest"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "puma", "~> 3.2"
  spec.add_runtime_dependency "rqrcode_png", "~> 0.1"
  spec.add_runtime_dependency "rotp", "~> 3.0"
  spec.add_runtime_dependency "sinatra", "~> 1.4"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end

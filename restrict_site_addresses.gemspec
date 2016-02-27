# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'restrict_site_addresses/version'

Gem::Specification.new do |spec|
  spec.name          = "restrict_site_addresses"
  spec.version       = RestrictSiteAddresses::VERSION
  spec.authors       = ["Mirai"]
  spec.email         = ["RobertRMiner@gmail.com"]
  spec.summary       = "Restricted Site Address Feature"
  spec.description   = "Restricted Site Address Feature"
  spec.homepage      = "https://github.com/Tukaiz/restrict_site_addresses"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

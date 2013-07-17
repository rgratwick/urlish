# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'url_formatter/version'

Gem::Specification.new do |spec|
  spec.name          = "url_formatter"
  spec.version       = UrlFormatter::VERSION
  spec.authors       = ["Robert Gratwick"]
  spec.email         = ["rgratwick@gmail.com"]
  spec.description   = %q{Testing a gem description}
  spec.summary       = %q{Testing a gem summary}
  spec.homepage      = "http://github.com/rgratwick/url_formatter"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
	spec.add_development_dependency "rspec"
	spec.add_development_dependency "supermodel"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'templator/version'

Gem::Specification.new do |spec|
  spec.name          = "k-templator"
  spec.version       = Templator::VERSION
  spec.authors       = ["Scott Le"]
  spec.email         = ["scott.lee318@gmail.com", "khai.le@live.com"]

  spec.summary       = %q{Generate content based on ERB template file and variables}
  spec.description   = %q{Use Ruby ERB template, plus variables defined in YAML format file to generate content}
  spec.homepage      = "https://lequangkhai.wordpress.com"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["templator"]
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "tilt"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cfer/provisioning/version'

Gem::Specification.new do |spec|
  spec.name          = "cfer-provisioning"
  spec.version       = Cfer::Provisioning::VERSION
  spec.authors       = ["Sean Edwards"]
  spec.email         = ["stedwards87+git@gmail.com"]

  spec.summary       = %q{Provisioning tools for Cfer}
  spec.description   = %q{Provisioning tools for Cfer}
  spec.homepage      = "https://github.com/seanedwards/cfer-provisioning"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "serverspec"

  spec.add_runtime_dependency 'cfer', '>= 0.5'
  spec.add_runtime_dependency 'erubis', '~> 2.7.0'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heresy/version'

Gem::Specification.new do |spec|
  spec.name          = "heresy"
  spec.version       = Heresy::VERSION
  spec.authors       = ["Ellen Marie Dash"]
  spec.email         = ["me@duckie.co"]

  spec.summary       = %q{An alternative standard library with no intent of compatibility.}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/ruby-heresy"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  # Core class improvements.
  spec.add_runtime_dependency "heresy-string", "~> 1.0.0"

  # Miscellaneous things.
  spec.add_runtime_dependency "from", "~> 0.1.0"
  spec.add_runtime_dependency "default", "~> 0.2.0"

  # Net
  spec.add_runtime_dependency "net-socket", "~> 1.0.0"
  #spec.add_runtime_dependency "heresy-net-http", "~> 1.0.0"
end

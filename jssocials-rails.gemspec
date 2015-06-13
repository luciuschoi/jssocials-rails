# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jssocials/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "jssocials-rails"
  spec.version       = Jssocials::Rails::VERSION
  spec.authors       = ["Hyo Seong Choi"]
  spec.email         = ["lucius.choi@gmail.com"]
  spec.license       = 'MIT'
  spec.summary       = %q{Wrapping Social Network Sharing jQuery Plugin with ruby gem for the easy use in Rails projects}
  spec.description   = %q{jsSocials is a simple social network sharing jQuery plugin. It's flexible and easily extensible. Configure visual appearance. Choose one of several themes provided. Add any yet unsupported social network if needed.}
  spec.homepage      = "https://github.com/luciuschoi/jssocials-rails"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|jssocials)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end

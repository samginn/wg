# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wg/version'

Gem::Specification.new do |spec|
  spec.name          = "wg"
  spec.version       = Wg::VERSION
  spec.authors       = ["Sam Ginn"]
  spec.email         = ["sam@samginn.com"]

  spec.summary       = "simple git(hub|lab) command line tool"
  spec.description   = "wg is a simple git(hub|lab) command line tool to manage git projects locally in the ~/w/g/ directory"
  spec.homepage      = "https://github.com/samginn/wg"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "wg"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end

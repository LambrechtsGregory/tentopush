# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tentopush/version'

Gem::Specification.new do |spec|
  spec.name          = "tentopush"
  spec.version       = Tentopush::VERSION
  spec.authors       = ["Gregory Lambrechts"]
  spec.email         = ["lambrechts_gregory@hotmail.com"]
  spec.summary       = %q{tentopush gem.}
  spec.description   = %q{Allows you to send pushes to the 10topush webserver.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end

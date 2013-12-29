# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'media-player/version'

Gem::Specification.new do |spec|
  spec.name          = "media-player"
  spec.version       = Media::Player::VERSION
  spec.authors       = ["Robin Singh"]
  spec.email         = ["robin.singh.1991@gmail.com"]
  spec.description   = "Wrapper Around Media Player"
  spec.summary       = "Nice Wrapper Around Media Player"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

	spec.add_dependency 'bubble-wrap'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

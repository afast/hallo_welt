# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hallo_welt/version'

Gem::Specification.new do |spec|
  spec.name          = 'hallo_welt'
  spec.version       = HalloWelt::VERSION
  spec.authors       = ['Andreas Fast']
  spec.email         = ['andreas.fast@moove-it.com']
  spec.summary       = %q{Print hello world from C}
  spec.description   = %q{This is a hello world example for a gem with native extensions}
  spec.homepage      = 'http://github.com/afast/hallo_welt'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib', 'ext']
  spec.extensions    = %w[ext/hallo_welt/extconf.rb]

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rake-compiler', '~> 0.9.5'
end

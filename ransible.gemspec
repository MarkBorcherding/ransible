# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ransible/version'

Gem::Specification.new do |spec|
  spec.name          = 'ransible'
  spec.version       = Ransible::VERSION
  spec.authors       = ['Mark Borcherding']
  spec.email         = ['markborcherding@gmail.com']
  spec.summary       = 'A set of classes to create Ansible modules in Ruby.'
  spec.description   = 'A set of classes to create Ansible modules in Ruby.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end

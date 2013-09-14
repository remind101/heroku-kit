# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku/kit/version'

Gem::Specification.new do |spec|
  spec.name          = 'heroku-kit'
  spec.version       = Heroku::Kit::VERSION
  spec.authors       = ['Eric J. Holmes']
  spec.email         = ['eric@ejholmes.net']
  spec.description   = %q{Collection of ruby gems for heroku apps}
  spec.summary       = %q{Collection of ruby gems for heroku apps}
  spec.homepage      = 'https://github.com/remind101/heroku-kit'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'rack-timeout',       '~> 0.0.4'
  spec.add_dependency 'formatted-metrics',  '~> 1.0'
  spec.add_dependency 'collective-metrics', '~> 0.1'
  spec.add_dependency 'request_id',         '~> 0.1'
  spec.add_dependency 'rails_12factor'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_development_dependency 'sidekiq'
  spec.add_development_dependency 'rails', '>= 3.2'
end

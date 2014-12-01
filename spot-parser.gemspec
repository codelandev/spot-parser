# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spot/parser/version'

Gem::Specification.new do |spec|
  spec.name          = 'spot-parser'
  spec.version       = Spot::Parser::VERSION
  spec.authors       = ['Sérgio Schnorr Júnior', 'Codeland']
  spec.email         = ['jr.schnorr@gmail.com', 'contato@codeland.com.br']
  spec.summary       = %q{Geração de templates para Spot}
  spec.description   = %q{Geração de templates HTML para a Spot}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_runtime_dependency 'slim'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
end

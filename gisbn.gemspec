lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gisbn/version'

Gem::Specification.new do |spec|
  spec.name          = 'gisbn'
  spec.version       = Gisbn::VERSION
  spec.authors       = ['Eftakhairul Islam']
  spec.email         = ['eftakhairul@gmail.com']
  spec.summary       = 'Book information from ISBN by Google Book API.'
  spec.description   = "It fetches book's information by ISBN number based on Google Book API."
  spec.homepage      = 'https://github.com/eftakhairul/gisbn'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '>= 2.1.0'
  spec.add_development_dependency 'rake'

  # #dependency for testing automation
  spec.add_development_dependency 'factory_bot'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-nc'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'webmock'
end

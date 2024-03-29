$:.push File.expand_path('../lib', __FILE__)
require 'paper_generation/version'
require 'date'
Gem::Specification.new do |s|
  s.name          = PaperGeneration::NAME
  s.version       = PaperGeneration::VERSION
  s.date          = Date.today.to_s
  s.platform      = Gem::Platform::RUBY

  s.summary       = "Question Paper Generation"
  s.description   = "A gem to select question ids from the given question bank for question paper generation."
  s.authors       = ["Shobhit Dixit"]
  s.email         = 'shobhit.dixit@metacube.com'
  # s.files         = `git ls-files`.split("\n")
  s.files         = Dir['lib/*.rb'] + Dir['lib/overrides/*.rb'] + Dir['lib/paper_generation/*.rb']
  s.test_files    = Dir['spec/*.rb'] + Dir['spec/paper_generation/*.rb']
  s.homepage      = 'https://github.com/manish-sharma/meta-paper-generation'
  s.license       = 'MIT'
  s.require_paths = ['lib']

  # s.add_development_dependency 'bundler' # packaging feature
  s.add_development_dependency 'rake', '~>12.0', '>=12.0.0' # Tasks manager
  s.add_development_dependency 'rspec-rails', '~>3.5', '>=3.5.2'
  s.add_development_dependency 'yard', '~>0.9.6'
end

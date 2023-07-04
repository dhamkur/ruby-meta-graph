# frozen_string_literal: true

require File.expand_path("../lib/ruby_meta_graph/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "ruby_meta_graph"
  spec.version       = RubyMetaGraph::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.summary       = "Meta Graph API for Ruby"
  spec.authors       = ["Adham Kurniawan"]
  spec.email         = "adhamkurniawan29@gmail.com"
  spec.homepage      = "https://rubygemspec.org/gems/ruby_meta_graph"
  spec.files         = Dir["{lib}/**/*", "LICENSE", "*.md"]
  spec.require_paths = ["lib"]
  spec.license       = "MIT"

  spec.add_dependency 'faraday', '~> 2.7', '>= 2.7.9'
  spec.add_development_dependency 'dotenv', '~> 2.8', '>= 2.8.1'
  spec.add_development_dependency 'debug', '~> 1.0', '>= 1.0.0'
end

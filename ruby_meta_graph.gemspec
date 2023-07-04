# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = "ruby_meta_graph"
  spec.version      = "0.1.0"
  spec.platform     = Gem::Platform::RUBY
  spec.summary      = "Meta Graph API for Ruby"
  spec.description  = "Meta Graph API for Ruby"
  spec.authors      = ["Adham Kurniawan"]
  spec.email        = "adhamkurniawan29@gmail.com"
  spec.homepage     = "https://rubygemspec.org/gems/ruby_meta_graph"
  spec.files        = Dir["{lib}/**/*.rb", "LICENSE", "*.md"]
  spec.require_path = "lib"
  spec.license      = "MIT"

  spec.add_runtime_dependency 'faraday', '~> 2.7', '>= 2.7.9'
end

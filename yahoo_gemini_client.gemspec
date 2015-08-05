# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yahoo_gemini_client/version'

Gem::Specification.new do |spec|
  spec.name          = "yahoo_gemini_client"
  spec.version       = YahooGeminiClient::VERSION
  spec.authors       = ["Ramon Tayag", "Marc Ignacio"]
  spec.email         = ["ramon.tayag@gmail.com", "marcrendlignacio@gmail.com"]

  spec.summary       = %q{A Ruby Interface to the Yahoo Gemini API}
  spec.description   = %q{A Ruby Interface to the Yahoo Gemini API}
  spec.homepage      = "http://github.com/g5/yahoo_gemini_client"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "oauth2", "~> 1.0"
  spec.add_dependency "httparty", "~> 0.13"
  spec.add_dependency "activesupport", ">= 3.0"
  spec.add_dependency "activemodel"
  spec.add_dependency "mechanize", "~> 2.7"
  spec.add_dependency "virtus", "~> 1.0"
  spec.add_development_dependency "vcr", "~> 2.9"
  spec.add_development_dependency "webmock", "~> 1.21"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "dotenv", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3"
  spec.add_development_dependency "rspec-its", "~> 1.0"
  spec.add_development_dependency "virtus-matchers"
  spec.add_development_dependency "shoulda-matchers"
end

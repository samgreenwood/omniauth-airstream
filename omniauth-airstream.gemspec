# coding: utf-8
require File.expand_path('../lib/omniauth-airstream/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "omniauth-airstream"
  spec.version       = OmniAuth::AirStream::VERSION
  spec.authors       = ["Sam Greenwood"]
  spec.email         = ["sam@samgreenwood.me"]

  spec.summary       = %q{OmniAuth integration for Air-Stream.}
  spec.homepage      = "http://git.walker.wan/air-stream/omniauth-airstream-omniauth-airstream-airstream"
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

  spec.add_dependency 'omniauth', '~> 1.0'
  spec.add_dependency 'omniauth-oauth2', '>= 1.1.1', '< 2.0'
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end

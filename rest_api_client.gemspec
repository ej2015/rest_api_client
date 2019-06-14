
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rest_api_client/version"

Gem::Specification.new do |spec|
  spec.name          = "rest_api_client"
  spec.version       = RestApiClient::VERSION
  spec.authors       = ["Edgar"]
  spec.email         = ["zorro.ej@gmail.com"]

  spec.summary       = %q{A small client to reduce boilerplate code}
  spec.description   = %q{Subclass this client and jump into the real work of creating your awesome app straight away without worrying the nitty-gritties of HTTP call implementation.}
  spec.homepage      = "https://github.com/ej2015/rest_api_client"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 0.15.3"
  spec.add_dependency "faraday_middleware", "~> 0.13.1"
  spec.add_dependency "activesupport", ">=4.2"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "fakeweb", "~> 1.3"

end

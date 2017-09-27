lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ruboty/twitter/version"

Gem::Specification.new do |spec|
  spec.name          = "ruboty-twitter-stream-filter"
  spec.version       = Ruboty::Twitter::VERSION
  spec.authors       = ["hatch2"]
  spec.email         = ["tasuke.radio@gmail.com"]
  spec.summary       = "An ruboty adapter for twitter."
  spec.homepage      = "https://github.com/hatch2/ruboty-twitter-stream-filter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_dependency "mem"
  spec.add_dependency "ruboty"
  spec.add_dependency "twitter", ">= 5.0.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end

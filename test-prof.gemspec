# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_prof/version'

Gem::Specification.new do |spec|
  spec.name          = "test-prof"
  spec.version       = TestProf::VERSION
  spec.authors       = ["Vladimir Dementyev"]
  spec.email         = ["dementiev.vm@gmail.com"]

  spec.summary       = "Ruby applications tests profiling tools"
  spec.description   = %{
    Ruby applications tests profiling tools.

    Contains tools to anylyze factories usage, integrate with Ruby profilers,
    profile your examples using ActiveSupport notifications (if any) and
    statically analyze your code with custom Rubocop cops.
  }
  spec.homepage      = "http://github.com/palkan/test-prof"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "activerecord", "~> 5.0"
  spec.add_development_dependency "factory_girl", "~> 4.8.0"
  spec.add_development_dependency "rubocop", "~> 0.49"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "sidekiq", "~> 4.0"
end

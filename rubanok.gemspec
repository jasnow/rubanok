# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubanok/version"

Gem::Specification.new do |spec|
  spec.name          = "rubanok"
  spec.version       = Rubanok::VERSION
  spec.authors       = ["Vladimir Dementyev"]
  spec.email         = ["dementiev.vm@gmail.com"]

  spec.summary       = "Parameters-based transformation DSL"
  spec.description   = "Parameters-based transformation DSL"
  spec.homepage      = "https://github.com/palkan/rubanok"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.metadata = {
    "bug_tracker_uri" => "http://github.com/palkan/rubanok/issues",
    "changelog_uri" => "https://github.com/palkan/rubanok/blob/master/CHANGELOG.md",
    "documentation_uri" => "http://github.com/palkan/rubanok",
    "homepage_uri" => "http://github.com/palkan/rubanok",
    "source_code_uri" => "http://github.com/palkan/rubanok"
  }

  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "sorbet-runtime"

  spec.add_development_dependency "actionpack", ">= 4.2"
  spec.add_development_dependency "actionview", ">= 4.2"
  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rails", ">= 4.2"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "standard", "~> 0.0.39"
end

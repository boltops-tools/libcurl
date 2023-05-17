# frozen_string_literal: true

require_relative "lib/libcurl/version"

Gem::Specification.new do |spec|
  spec.name = "libcurl"
  spec.version = Libcurl::VERSION
  spec.authors = ["Tung Nguyen"]
  spec.email = ["tongueroo@gmail.com"]

  spec.summary = "Gem tells serverlessgems to build the gem package with libcurl"
  spec.homepage = "https://github.com/boltops-tools/libcurl"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/extconf.rb"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

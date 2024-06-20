# frozen_string_literal: true

require_relative "lib/givecard_api/version"

Gem::Specification.new do |spec|
  spec.name = "givecard_api"
  spec.version = GivecardApi::VERSION
  spec.authors = ["Nick Henderson"]
  spec.email = ["nick@samaritan.city"]

  spec.summary = "GiveCard SDK for Ruby"
  spec.description = "The official SDK for the GiveCard API, containing interface implemenatations and error handling for working with it."
  spec.homepage = "https://givecard-platform-dev.web.app/"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/givesafe/givecard-api"
  spec.metadata["changelog_uri"] = "https://github.com/givesafe/givecard-api/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "rest-client", "~> 2.1.0"
  spec.add_development_dependency "dotenv", "~> 2.5"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

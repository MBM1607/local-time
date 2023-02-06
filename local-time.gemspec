# frozen_string_literal: true

require_relative "lib/local/time/version"

Gem::Specification.new do |spec|
  spec.name = "local-time"
  spec.version = Local::Time::VERSION
  spec.authors = ["Muhammad Khan"]
  spec.email = ["me@muhammadkhan.dev"]

  spec.summary = "Rails engine for server-side local time"
  spec.homepage = "https://github.com/MBM1607/local-time"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/MBM1607/local-time"
  spec.metadata["changelog_uri"] = "https://github.com/MBM1607/local-time/blob/main/CHANGELOG.md"

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

  spec.add_dependency "actionview"
end

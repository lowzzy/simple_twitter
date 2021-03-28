require_relative "lib/simple_twitter/version"

Gem::Specification.new do |spec|
  spec.name          = "simple_twitter"
  spec.version       = SimpleTwitter::VERSION
  spec.authors       = ["Yutaka HARA"]
  spec.email         = ["yutaka.hara+github@gmail.com"]

  spec.summary       = "Dead simple client for Twitter API v1/v2"
  spec.description   = "Dead simple client for Twitter API (supports both v1 and v2)"
  spec.homepage      = "https://github.com/yhara/simple_twitter"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "http", "~> 4"
  spec.add_dependency "simple_oauth", "~> 0.3.1"
end

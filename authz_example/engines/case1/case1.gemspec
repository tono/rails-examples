require_relative "lib/case1/version"

Gem::Specification.new do |spec|
  spec.name        = "case1"
  spec.version     = Case1::VERSION
  spec.authors     = ["AuthZ Example Case1"]
  spec.email       = ["case1@example.com"]
  # spec.homepage    = "TODO"
  spec.summary     = "Summary of Case1."
  spec.description = "Description of Case1."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  #
  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4", ">= 6.1.4.4"
end

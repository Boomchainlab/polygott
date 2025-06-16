# frozen_string_literal: true

require_relative "lib/agu_token/version"

Gem::Specification.new do |s|
  s.name = "agu-token"
  s.version = AguToken::VERSION
  s.summary = "Ruby library to access the Agu Token API"
  s.authors = ["Agu Token"]
  s.email = ""
  s.homepage = "https://gemdocs.org/gems/agu-token"
  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = "https://github.com/Boomchainlab/polygott"
  s.metadata["rubygems_mfa_required"] = false.to_s
  s.required_ruby_version = ">= 3.2.0"

  s.files = Dir[
    "lib/**/*.rb",
    "rbi/**/*.rbi",
    "sig/**/*.rbs",
    "manifest.yaml",
    "SECURITY.md",
    "CHANGELOG.md",
    ".ignore"
  ]
  s.extra_rdoc_files = ["README.md"]
  s.add_dependency "connection_pool"
end

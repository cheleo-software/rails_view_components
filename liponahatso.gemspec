require_relative "lib/liponahatso/version"

Gem::Specification.new do |spec|
  spec.name        = "liponahatso"
  spec.version     = Liponahatso::VERSION
  spec.authors     = [ "Thato Semoko" ]
  spec.email       = [ "thatosmk@gmail.com" ]
  spec.homepage    = "https://thato.semoko.co.za"
  spec.summary     = "Resuable custom view components for Rails"
  spec.description = "UI Components for Rails applications"
  spec.license     = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com"
  spec.metadata["changelog_uri"] = "https://github.com"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0"
  spec.add_dependency "view_component", ">= 3.0"
  spec.add_dependency "dry-initializer", ">=3.0"
end

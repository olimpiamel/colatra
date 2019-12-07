
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "colatra/version"

Gem::Specification.new do |spec|
  spec.name          = "colatra"
  spec.version       = Colatra::VERSION
  spec.authors       = ["Melanie Calvo"]
  spec.email         = ["olimpia-mel@hotmail.com"]

  spec.summary       = "Gem that translates languages through the Google Translate API"
  spec.description   = "The gem performs translations between two languages through calling requests into the Google Translate API. All text to be translate has to be inserted at once and it will not be modifiable as it would generate a new request to the API. Instead, a fresh translation should be made."
  spec.homepage      = "http://rubygems.org/gems/colatra" #the url is not real, gem has not been uploaded to the gems website
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "http://www.github.com/olimpiamel/colatra"
    spec.metadata["changelog_uri"] = "http://www.github.com/olimpiamel/colatra"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end

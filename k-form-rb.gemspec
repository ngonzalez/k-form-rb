
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "k/form/rb/version"

Gem::Specification.new do |spec|
  spec.name          = "k-form-rb"
  spec.version       = K::Form::Rb::VERSION
  spec.authors       = ["Nicolas GONZALEZ"]
  spec.email         = ["nicolasgonzalez180@gmail.com"]

  spec.summary       = "k-form-rb"
  spec.description   = "k-form-rb"
  spec.homepage      = "https://github.com/ngonzalez/k-form-rb"

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

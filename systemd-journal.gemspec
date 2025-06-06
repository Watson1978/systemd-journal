lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "systemd/journal/version"

Gem::Specification.new do |gem|
  gem.name = "systemd-journal"
  gem.version = Systemd::Journal::VERSION
  gem.license = "MIT"
  gem.authors = ["John Ledbetter", "Daniel Mack"]
  gem.email = ["john@weirdhorse.party"]
  gem.description = "Provides the ability to navigate and read entries from the systemd journal in ruby, as well as write events to the journal."
  gem.summary = "Ruby bindings to libsystemd-journal"
  gem.homepage = "https://github.com/ledbettj/systemd-journal"

  gem.files = `git ls-files`.split($/)
  gem.executables = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.require_paths = ["lib"]
  gem.extensions = ["ext/shim/extconf.rb"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_runtime_dependency "ffi", "~> 1.9"

  gem.add_development_dependency "pry", "~> 0.14"
  gem.add_development_dependency "rake", "~> 13.1"
  gem.add_development_dependency "rake-compiler", "~> 1.2"
  gem.add_development_dependency "rspec", "~> 3.13"
  gem.add_development_dependency "simplecov", "~> 0.22"
  gem.add_development_dependency "standard", "~> 1.31"
  gem.add_development_dependency "yard", "~> 0.9"
end

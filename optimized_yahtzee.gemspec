# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'optimized_yahtzee/version'

Gem::Specification.new do |spec|
  spec.name          = "optimized_yahtzee"
  spec.version       = OptimizedYahtzee::VERSION
  spec.authors       = ["Nathan Benes"]
  spec.email         = ["nathan.benes@gmail.com"]

  spec.summary       = %q{Calculates optimal moves in any given game of Yahtzee}
  spec.description   = %q{This is an implementation of the work done by Tom Verhoeff in 1999 and James Glen in 2006 (see the Readme)}
  spec.homepage      = "https://www.github.com/nzifnab/optimized_yahtzee"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'none'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.5"
end

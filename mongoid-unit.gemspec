# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mongoid-unit/version"

Gem::Specification.new do |s|
  s.name        = "mongoid-unit"
  s.version     = Mongoid::Unit::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Rimas Silkaitis"]
  s.email       = ["neovintage@gmail.com"]
  s.homepage    = "http://github.com/neovintage/mongoid-unit"
  s.summary     = %q{Test::Unit macros for Mongoid}
  s.description = %q{Test::Unit macros for Mongoid}

  s.rubyforge_project = "mongoid-unit"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency("mongoid", ["~> 2.0"])
  s.add_runtime_dependency("test/unit")
end

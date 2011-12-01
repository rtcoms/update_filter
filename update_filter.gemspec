# -*- encoding: utf-8 -*-
#$:.push File.expand_path("../lib", __FILE__)
$:.push File.dirname(__FILE__) + '/lib'
require "update_filter/version"

Gem::Specification.new do |s|
  s.name        = "update_filter"
  s.version     = UpdateFilter::VERSION
  s.authors     = ["Rohit Trivedi"]
  s.email       = ["86.rohit@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Provide update filter hook methods for ActiveRecord class}
  s.description = %q{Provide mthods before_update_filter and after_update_filter}

  s.rubyforge_project = "update_filter"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

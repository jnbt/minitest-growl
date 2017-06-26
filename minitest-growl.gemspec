# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minitest/growl_notify/version"

Gem::Specification.new do |s|
  s.name        = "minitest-growl"
  s.version     = MiniTest::GrowlNotify::VERSION
  s.authors     = ["Jonas Thiel"]
  s.email       = ["jonasthiel+minitest-growl@googlemail.com"]
  s.homepage    = "https://github.com/jnbt/minitest-growl"
  s.summary     = %q{Test notifier for minitest via growl.}
  s.description = %q{Display graphical notfications when testing with minitest.}

  s.rubyforge_project = "minitest-growl"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'minitest'
  s.add_runtime_dependency 'growl'
end

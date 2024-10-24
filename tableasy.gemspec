# coding: utf-8
$:.push File.expand_path("lib", __dir__)
require "tableasy/version"

Gem::Specification.new do |s|
  s.name = "tableasy"
  s.version = Tableasy::VERSION
  s.authors = ["Andrius Chamentauskas"]
  s.date = "2013-05-02"
  s.description = "Rails tables builder gem that makes creating tables painless. Includes ability to write custom column formatters or even customize row completely.\nIncludes library of predefined column formatters. Also has ability to generate \"totals\" row."
  s.email = "sinsiliux@gmail.com"
  s.homepage = "http://github.com/sinsiliux/tableasy"

  s.files         = Dir["{app,config,lib}/**/*", "CHANGELOG.md", "LICENSE", "README.md"]
  s.require_paths = ["lib"]
  s.required_ruby_version = '>= 3.3.0'

  s.summary = "Rails tables builder gem"

  s.add_dependency("activesupport", ">= 7.0.0")
  s.add_dependency("actionpack", ">= 7.0.0")

  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "factory_bot", "~> 6.0"

end

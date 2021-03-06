require 'rake'

Gem::Specification.new do |s|
  s.name = 'dohdata'
  s.version = '0.1.20'
  s.summary = "data generation framework"
  s.description = "utilities for generating random names, phone numbers, emails, etc."
  s.require_path = 'lib'
  s.required_ruby_version = '>= 2.2.0'
  s.add_runtime_dependency 'dohutil', '~> 0.2', '>= 0.2.29'
  s.add_runtime_dependency 'dohlog', '~> 0.2', '>= 0.2.7'
  s.authors = ['ATPSoft']
  s.bindir = 'bin'
  s.homepage = 'https://github.com/atpsoft/dohdata'
  s.license = 'MIT'
  s.email = ['devinfo@atpsoft.com']
  s.extra_rdoc_files = ['MIT-LICENSE']
  s.test_files = FileList["{test}/**/*.rb"].to_a
  s.executables = FileList["{bin}/**/*"].to_a.collect { |elem| elem.slice(4..-1) }
  s.files = FileList["{bin,lib,test}/**/*"].to_a
end

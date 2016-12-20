# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'uship/version'

Gem::Specification.new do |s|
  s.name        = 'uship'
  s.version     = Uship::VERSION
  s.authors     = ['Bobby Uhlenbrock']
  s.email       = ['bobby@uhlenbrock.us']
  s.homepage    = 'http://github.com/uhlenbrock/uship-ruby'
  s.summary     = %q{A Ruby wrapper for the uShip API}
  s.description = %q{A Ruby wrapper for the uShip API}
  s.rubyforge_project = 'uship'

  # Development Gems
  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'guard-minitest'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'minitest-reporters'
  s.add_development_dependency 'minitest-vcr'
  s.add_development_dependency 'rb-inotify'

  # Gems
  s.add_dependency 'hashie', '3.4.6'
  s.add_dependency 'faraday', '0.10.0'
  # s.add_dependency 'faraday_middleware', '0.10.1'


  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
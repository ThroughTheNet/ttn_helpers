# -*- encoding: utf-8 -*-
require File.expand_path("../lib/TTN/helpers/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "ttn_helpers"
  s.version     = TTN::Helpers::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Jonathan Davies', 'ThroughTheNet']
  s.email       = ['info@throughthenet.com']
  s.homepage    = "https://github.com/ThroughTheNet/ttn_helpers"
  s.summary     = "ThroughTheNet rails helpers for internal use"
  s.description = "ThroughTheNet rails helpers for internal use"

  s.required_rubygems_version = ">= 1.3.6"
  
  s.add_dependency 'rails', '~> 3'

  s.add_development_dependency "bundler", ">= 1.0.0"
  s.add_development_dependency 'rspec-rails', '~> 2'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'acts_as_fu'
  s.add_development_dependency 'dragonfly'
  s.add_development_dependency 'rack-cache'
  
  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end

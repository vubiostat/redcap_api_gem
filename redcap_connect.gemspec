require File.expand_path("../lib/redcap_connect.rb", __FILE__)

Gem::Specification.new do |s|
  s.name           = 'redcap_connect'
  s.version        = RedcapConnect::VERSION
  s.platform       = Gem::Platform::RUBY
  s.authors        = ['Shawn Garbett']
  s.email          = 'shawn.garbett@vumc.org'
  s.homepage       = 'https://github.com/vubiostat/redcap_connect'
  s.summary        = 'REDCap data access via API, database or flatfile export'
  s.description    = 'Providing for REDCap data access into Ruby following design in R package redcapAPI'
  s.license        = 'MIT'

  s.required_rubygems_version = '>= 1.3.6'

  s.files          = Dir["lib/**/*.rb", "bin/*", "LICENSE", "*.md"]
end

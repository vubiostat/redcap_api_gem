require File.expand_path("../lib/version", __FILE__)

Gem::Specification.new do |s|
  s.name           = 'redcap_api'
  s.version        = RedcapApi::VERSION
  s.platform       = Gem::Platform::RUBY
  s.authors        = ['Shawn Garbett']
  s.email          = 'shawn.garbett@vumc.org'
  s.homepage       = 'https://github.com/vubiostat/redcap_api-gem'
  s.summary        = 'REDCap API Functionality'
  s.description    = 'A port of the R package redcapAPI'
  s.license        = 'MIT'

  s.required_rubygems_version = '>= 1.3.6'

  s.files          = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path   = 'lib'

end

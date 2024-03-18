require 'bundler'
Bundler.setup

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

gemspec = eval(File.read('redcap_api.gemspec'))


task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["redcap_api.gemspec"] do
  system "gem build redcap_api.gemspec"
  system "gem install redcap_api-#{RedcapApi::VERSION}.gem"
end

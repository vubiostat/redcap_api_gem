require 'bundler'
Bundler.setup

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)

gemspec = eval(File.read('redcap_connect.gemspec'))


task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["redcap_connect.gemspec"] do
  system "gem build redcap_connect.gemspec"
  system "gem install redcap_connect-#{RedcapConnect::VERSION}.gem"
end

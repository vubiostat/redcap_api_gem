
class RedcapApi < RedcapConnect

  # Core attributes
  attr_accessor :url, :token, :retries, :retry_interval, :retry_quietly

  def initialize(url, token, args={})
    options = {:retries => 5, :retry_quietly => true}.merge(args)
    
    if !options.has_key?(:retry_interval)
      options[:retry_interval] = (1..options[:retries]).to_a.map!{|x| 2**x}
    end

    self.url            = url
    self.token          = token
    self.retries        = options[:retries]
    self.retry_interval = options[:retry_interval]
    self.retry_quietly  = options[:retry_quietly]
  end

end

require 'redcap_connect/export_version'


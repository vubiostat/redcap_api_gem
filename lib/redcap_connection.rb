
# Create cache methods
class Class
  def cache_accessor(*args)
    args.each do |arg|
      self.class_eval("def refresh_#{arg}; @#{arg}=export#{arg.to_s.split('_').collect(&:capitalize).join}; end")
      self.class_eval("def #{arg}; if (self.#{arg}.nil?); refresh_#{arg}(); @#{arg};end;end")
      self.class_eval("def flush_#{arg}; @#{arg} = nil; end")
    end
  end
end


class RedcapConnection

  # Core attributes
  attr_accessor :url, :token, :retries, :retry_interval, :retry_quietly
  # Cached attributes
  cache_accessor :version #,:metadata, :arms, :events, :fieldnames, :mapping, :users, 
                 #:user_roles, :user_role_assignment, 
                 #:project_information, :instruments, :repeat_instrument_event,
                 #:dags, :dag_assignment, :external_coding

  def initialize(url, token, args={})
    options = {:retries => 5, :retry_quietly => TRUE}.merge(args)
    
    if !options.has_key?(:retry_interval)
      options[:retry_interval] = (1..x.length()).to_a.map!{|x| 2**x}
    end

    self.url            = url
    self.token          = token
    self.retries        = options[:retries]
    self.retry_interval = options[:retry_interval]
    self.retry_quietly  = options[:retry_quietly]
  end

end

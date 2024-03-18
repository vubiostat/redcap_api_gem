class REDCapConnection
  # Core attributes
  attr_accessor :url, :token, :retries, :retry_interval, :retry_quietly
  # Cached attributes
  attr_accessor :metadata, :arms, :events, :fieldnames, :mapping, :users, 
                :user_roles, :user_role_assignment, :version, 
                :project_information, :instruments, :repeat_instrument_event,
                :dags, :dag_assignment, :external_coding

  def initialize(url, token, args={})
    options = {:retries = 5, :retry_quietly = TRUE}.merge(args)
    
    if (!options.has_key?(:retry_interval))
      options[:retry_interval] = (1..x.length()).to_a.map!{|x| 2**x}
    end

    options[:retry_iterval]
                 retries, retry_interval, retry_quietly)
    
    self.url            = url
    self.token          = token
    self.retries        = options[:retries]
    self.retry_interval = options[:retry_interval]
    self.retry_quietly  = options[:retry_quietly]
  end

end

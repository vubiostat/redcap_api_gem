# Create cache methods
class Class
  def cache_accessor(*args)
    args.each do |arg|
      self.class_eval("def refresh_#{arg}; @#{arg}=export_#{arg}; end")
      self.class_eval("def #{arg}; if (@#{arg}.nil?); refresh_#{arg}(); @#{arg};end;end")
      self.class_eval("def flush_#{arg}; @#{arg} = nil; end")
    end
  end
end


class RedcapConnect
  VERSION = "0.0.1"

  # Cached attributes
  cache_accessor :version #,:metadata, :arms, :events, :fieldnames, :mapping, :users, 
                 #:user_roles, :user_role_assignment, 
                 #:project_information, :instruments, :repeat_instrument_event,
                 #:dags, :dag_assignment, :external_coding

  def export_version
    raise "Not implemented"
  end

end

#require 'redcap_connect/redcap_api'

autoload :RedcapApi,   'redcap_connect/redcap_api'


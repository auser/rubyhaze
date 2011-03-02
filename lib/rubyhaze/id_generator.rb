require File.expand_path(File.dirname(__FILE__) + '/../../lib/rubyhaze')

class RubyHaze::IdGenerator

  include RubyHaze::Mixins::DOProxy
  
  java_import 'com.hazelcast.core.IdGenerator'

  def initialize(name)
    @name = name.to_s
    @proxy_object = Hazelcast.get_id_generator @name
  end

end

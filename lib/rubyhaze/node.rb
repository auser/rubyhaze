raise "Rubyhaze only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)
require 'java'

module RubyHaze

  MODE         = "node" unless defined? MODE
  GEM_JAR_PATH = File.expand_path(File.dirname(__FILE__) + '/../../jars/hazelcast-1.9-RC.jar') unless defined? GEM_JAR_PATH
  JAR_PATH     = (ENV['HAZELCAST_NODE_JAR_PATH'] || GEM_JAR_PATH) unless defined? JAR_PATH

end

require File.expand_path(File.dirname(__FILE__) + '/../../lib/rubyhaze')

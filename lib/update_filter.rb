require "active_record"

$LOAD_PATH.unshift(File.dirname(__FILE__))

require "update_filter/version"
require "update_filter/railtie"

require File.join(File.dirname(__FILE__), "update_filter/railtie")

$LOAD_PATH.shift

module UpdateFilter
  autoload :Hook,            File.join(File.dirname(__FILE__), "update_filter/hook")
end

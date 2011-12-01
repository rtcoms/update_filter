require 'rails'
require 'update_filter'

module UpdateFilter
  class Railtie < Rails::Railtie
    config.to_prepare do
      #ActiveRecord::Base.send(:extend, UpdateFilter::Hook)
      ActiveRecord::Base.extend UpdateFilter::Hook if defined?(ActiveRecord::Base)
    end
  end
end

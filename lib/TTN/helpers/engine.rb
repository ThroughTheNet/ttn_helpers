require 'TTN/helpers/action_view/links'

require 'TTN/helpers/active_record/has_dragonfly_image'

require 'TTN/helpers/core/string'
require 'TTN/helpers/core/hash'

module TTN
  module Helpers 
    class Engine < Rails::Engine
      initializer 'TTN::Helpers' do |app|  
        ::ActiveRecord::Base.send(:extend, TTN::Helpers::ActiveRecord)
        ::ActionView::Base.send(:include, TTN::Helpers::ActionView)
        String.send(:include, TTN::Helpers::Core::String)
        Hash.send(:include, TTN::Helpers::Core::Hash)
      end
    end
  end
end

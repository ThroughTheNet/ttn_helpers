module TTN
  module Helpers
    module Core
      module String
      
        def shorten(length = 100, options = {})
          options.options_merge! :seperator => ' '
          truncate length, options
        end
        
      end
    end
  end
end

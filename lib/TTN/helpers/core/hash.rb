module TTN
  module Helpers
    module Core
      module Hash
      
        def options_merge!(options)
          self.to_options!.reverse_merge! options
        end
        
        def only(*keys)
          dup.only!(*keys)
        end
        
        def only!(*the_keys)
          keys.each { |key| delete(key) unless the_keys.include?(key) }
          self
        end
      end
    end
  end
end

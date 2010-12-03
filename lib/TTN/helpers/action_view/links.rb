module TTN
  module Helpers
    module ActionView
    
      def link_to_with_current(text, url, html = {})
        html[:class] = [html[:class],'current'].join(' ') if current_page?(url)
        link_to text, url, html
      end
      
    end
  end
end

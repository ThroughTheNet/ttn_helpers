module TTN
  module Helpers
    module ActionView
    
      def link_to_with_current(text, url, html = {})
        html[:class] = [html[:class],'current'].join(' ') if current_page?(url)
        link_to text, url, html
      end
      
      def stylesheet(*args)
        content_for :stylesheets, stylesheet_link_tag(*args)
      end
      
      def javascript(*args)
        content_for :javascripts, javascript_include_tag(*args)
      end
    end
  end
end

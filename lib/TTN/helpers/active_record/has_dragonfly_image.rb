module TTN
  module Helpers
    module ActiveRecord
    
      def has_dragonfly_image(options={})
        options.options_merge! :name => :image, :validates_presence => false, :validates_size => true, :max_size_mb => 20

        image_accessor options[:name]

        validates_presence_of options[:name] if options[:validates_presence]

        validates_size_of options[:name], :maximum => options[:max_size_mb].megabytes,
        :max_image_size => options[:max_size_mb].megabytes if options[:validates_size]

        validates_property :mime_type, :of => options[:name], :in => %w(image/jpeg image/png image/gif)
      end


    end
  end
end


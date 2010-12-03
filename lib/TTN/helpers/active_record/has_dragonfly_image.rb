module TTN
  module Helpers
    module ActiveRecord
    
      def has_dragonfly_image(options={})
        options.options_merge! :name => :image, :validates_presence => false, :validates_size => true, :max_size_mb => 20

        image_accessor options[:name]

        validates_presence_of options[:name], :message => 'Please specify an image for upload' if options[:validates_presence]

        validates_size_of options[:name], :maximum => options[:max_size_mb].megabytes,
        :message => "Image is too large, max #{options[:max_size_mb]}mb",
        :max_image_size => options[:max_size_mb].megabytes if options[:validates_size]

        validates_property :mime_type, :of => options[:name], :in => %w(image/jpeg image/png image/gif), :message => 'Image must be a JPEG, a PNG or a GIF, you uploaded a %{value}'
      end


    end
  end
end


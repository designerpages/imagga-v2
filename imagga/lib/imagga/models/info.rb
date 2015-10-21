require 'date'

module Imagga
class Info
  attr_accessor :background_colors, :color_percent_threshold, :color_variance, :foreground_colors, :image_colors, :object_percentage

  # :internal => :external
  def self.attribute_map
    {
      :background_colors => :'background_colors',
      :color_percent_threshold => :'color_percent_threshold',
      :color_variance => :'color_variance',
      :foreground_colors => :'foreground_colors',
      :image_colors => :'image_colors',
      :object_percentage => :'object_percentage'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"background_colors"]
      if (value = attributes["background_colors"]).is_a?(Array)
          @background_colors = value.map{ |v| BackgroundColor.new(v) }

        end
      end
    if self.class.attribute_map[:"color_percent_threshold"]
      @color_percent_threshold = attributes["color_percent_threshold"]
      end
    if self.class.attribute_map[:"color_variance"]
      @color_variance = attributes["color_variance"]
      end
    if self.class.attribute_map[:"foreground_colors"]
      if (value = attributes["foreground_colors"]).is_a?(Array)
          @foreground_colors = value.map{ |v| ForegroundColor.new(v) }

        end
      end
    if self.class.attribute_map[:"image_colors"]
      if (value = attributes["image_colors"]).is_a?(Array)
          @image_colors = value.map{ |v| ImageColor.new(v) }

        end
      end
    if self.class.attribute_map[:"object_percentage"]
      @object_percentage = attributes["object_percentage"]
      end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      next if self.send(key).nil?

      if self.send(key).respond_to? :to_body
        body[value] = self.send(key).to_body
      elsif self.send(key).kind_of?(Array)
        body[value] = []
        self.send(key).each do |arr|
           if arr.respond_to? :to_body
               body[value] << arr.to_body
           else
               body[value] << arr
           end
        end
      else
        body[value] = self.send(key)
      end
      
    end
    body
  end
end
end


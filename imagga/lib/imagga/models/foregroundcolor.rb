require 'date'

module Imagga
class ForegroundColor
  attr_accessor :b, :closest_palette_color, :closest_palette_color_html_code, :closest_palette_color_parent, :closest_palette_distance, :g, :html_code, :percentage, :r

  # :internal => :external
  def self.attribute_map
    {
      :b => :'b',
      :closest_palette_color => :'closest_palette_color',
      :closest_palette_color_html_code => :'closest_palette_color_html_code',
      :closest_palette_color_parent => :'closest_palette_color_parent',
      :closest_palette_distance => :'closest_palette_distance',
      :g => :'g',
      :html_code => :'html_code',
      :percentage => :'percentage',
      :r => :'r'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"b"]
      @b = attributes["b"]
      end
    if self.class.attribute_map[:"closest_palette_color"]
      @closest_palette_color = attributes["closest_palette_color"]
      end
    if self.class.attribute_map[:"closest_palette_color_html_code"]
      @closest_palette_color_html_code = attributes["closest_palette_color_html_code"]
      end
    if self.class.attribute_map[:"closest_palette_color_parent"]
      @closest_palette_color_parent = attributes["closest_palette_color_parent"]
      end
    if self.class.attribute_map[:"closest_palette_distance"]
      @closest_palette_distance = attributes["closest_palette_distance"]
      end
    if self.class.attribute_map[:"g"]
      @g = attributes["g"]
      end
    if self.class.attribute_map[:"html_code"]
      @html_code = attributes["html_code"]
      end
    if self.class.attribute_map[:"percentage"]
      @percentage = attributes["percentage"]
      end
    if self.class.attribute_map[:"r"]
      @r = attributes["r"]
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


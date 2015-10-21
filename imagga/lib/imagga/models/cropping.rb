require 'date'

module Imagga
class Cropping
  attr_accessor :target_height, :target_width, :x1, :x2, :y1, :y2

  # :internal => :external
  def self.attribute_map
    {
      :target_height => :'target_height',
      :target_width => :'target_width',
      :x1 => :'x1',
      :x2 => :'x2',
      :y1 => :'y1',
      :y2 => :'y2'

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?

    # convert hash key from symbol to string
    # and convert object to hash
    attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_s] = Swagger.to_body(v); memo}
    
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"target_height"]
      @target_height = attributes["target_height"]
      end
    if self.class.attribute_map[:"target_width"]
      @target_width = attributes["target_width"]
      end
    if self.class.attribute_map[:"x1"]
      @x1 = attributes["x1"]
      end
    if self.class.attribute_map[:"x2"]
      @x2 = attributes["x2"]
      end
    if self.class.attribute_map[:"y1"]
      @y1 = attributes["y1"]
      end
    if self.class.attribute_map[:"y2"]
      @y2 = attributes["y2"]
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


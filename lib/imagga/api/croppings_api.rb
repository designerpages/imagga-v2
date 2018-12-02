require "uri"

module Imagga
class CroppingsAPI
    basePath = "https://api.imagga.com/v2"
    # apiInvoker = APIInvoker

    

    # Analyze an image and return the best coordinates for cropping it
    # Analyze an image and return the best coordinates for cropping it in a specific size
    # @option opts [string] :url url
    # @option opts [string] :content Content id received by uploading an image to the content endpoint
    # @option opts [string] :resolution Resolution pair in the form (width)x(height) where 'x' is just the small letter x.
    # @option opts [string] :no_scaling Whether to apply any scaling to the smart-cropping output results or not.
    # @return CroppingsResponse
    def self.croppings (opts={})
      query_param_keys = [:'url',:'content',:'resolution',:'no_scaling']

      # set default values and merge with input
      options = {
      :'url' => nil,
        :'content' => nil,
        :'resolution' => nil,
        :'no_scaling' => "1"}.merge(opts)

      required_options = {
        }

      options.merge!(required_options)

      #resource path
      path = "/croppings"

      
      # pull querystring keys from options
      queryopts = options.select do |key,value|
        query_param_keys.include? key
      end

      # header parameter
      headers = {}
      # additional http headers
      headers['Accept'] = 'application/json'
      headers['Content-Type'] = 'application/x-www-form-urlencoded'

      # http body
      post_body = nil
      # form parameter
      form_parameter_hash = {}
      


    # authentication setting
    require_auth = true

      response = Swagger::Request.new(:GET, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
      CroppingsResponse.new(response)

    end

  end
end


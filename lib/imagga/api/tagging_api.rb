require "uri"

module Imagga
class TaggingAPI
    basePath = "https://api.imagga.com/v2"
    # apiInvoker = APIInvoker

    

    # Analyze an image and return keywords describing it
    # Analyze an image and return keywords describing it
    # @option opts [string] :url url
    # @option opts [string] :content Content id received by uploading an image to the content endpoint
    # @return TaggingResponse
    def self.tagging (opts={})
      query_param_keys = [:'url',:'content']

      # set default values and merge with input
      options = {
      :'url' => nil,
        :'content' => nil}.merge(opts)

      required_options = {
        }

      options.merge!(required_options)

      #resource path
      path = "/tagging"

      
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
      TaggingResponse.new(response)

    end

  end
end


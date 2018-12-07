require "uri"

module Imagga
class CategorizationsAPI
    basePath = "https://api.imagga.com/v2"
    # apiInvoker = APIInvoker

    

    # Categorize a photo by its vidual content
    # Analyze a photo and return a category describing it.
    # @param categorizer_id Categorizer ID
    # @option opts [string] :url url
    # @option opts [string] :content Content id received by uploading an image to the content endpoint
    # @return CategorizationResponse
    def self.categorize (categorizer_id,opts={})
      query_param_keys = [:'image_url',:'content']

      # verify existence of params
      raise "categorizer_id is required" if categorizer_id.nil?
      # set default values and merge with input
      options = {
      #:'url' => nil,
      :'image_url' => nil,
        :'content' => nil}.merge(opts)

      required_options = {
        :'categorizer_id' => categorizer_id}

      options.merge!(required_options)

      #resource path
      #path = "/categorizations/{categorizer_id}".sub('{' + 'categorizer_id' + '}', categorizer_id.to_s)
      path = "/categories/{categorizer_id}".sub('{' + 'categorizer_id' + '}', categorizer_id.to_s)

      
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
      CategorizationResponse.new(response)

    end

  end
end


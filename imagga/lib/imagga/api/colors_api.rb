require "uri"

module Imagga
class ColorsAPI
    basePath = "https://api.imagga.com/v1"
    # apiInvoker = APIInvoker

    

    # Analyze image and extract its dominant colors
    # Extract colors
    # @option opts [string] :url url
    # @option opts [string] :content content
    # @option opts [string] :extract_overall_colors  extract_overall_colors
    # @option opts [string] :extract_object_colors extract_object_colors
    # @return ColorsResponse
    def self.extract_colors (opts={})
      query_param_keys = [:'url',:'content',:'extract_overall_colors',:'extract_object_colors']

      # set default values and merge with input
      options = {
      :'url' => nil,
        :'content' => nil,
        :'extract_overall_colors' => "1",
        :'extract_object_colors' => "1"}.merge(opts)

      required_options = {
        }

      options.merge!(required_options)

      #resource path
      path = "/colors"

      
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
      ColorsResponse.new(response)

    end

  end
end


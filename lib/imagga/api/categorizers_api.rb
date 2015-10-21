require "uri"

module Imagga
class CategorizersAPI
    basePath = "https://api.imagga.com/v1"
    # apiInvoker = APIInvoker

    

    # List all available image categorizers
    # List all available image categorizers.
    # @return Array[CategorizersList]
    def self.list_categorizers (opts={})
      query_param_keys = []

      # set default values and merge with input
      options = {
      }.merge(opts)

      required_options = {
        }

      options.merge!(required_options)

      #resource path
      path = "/categorizers"

      
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
      response.map {|response|CategorizersList.new(response)}

    end

  end
end


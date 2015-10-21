require "uri"

module Imagga
class ContentAPI
    basePath = "https://api.imagga.com/v1"
    # apiInvoker = APIInvoker

    

    # Upload an image file to the API and get content id for processing it using one of the other endpoint methods.
    # Upload an image file to the API and get content id for processing it using one of the other endpoint method.
    # @param image image
    # @return UploadsResponse
    def self.upload (image,opts={})
      query_param_keys = []

      # verify existence of params
      raise "image is required" if image.nil?
      # set default values and merge with input
      options = {
      }.merge(opts)

      required_options = {
        :'image' => image}

      options.merge!(required_options)

      #resource path
      path = "/content"

      
      # pull querystring keys from options
      queryopts = options.select do |key,value|
        query_param_keys.include? key
      end

      # header parameter
      headers = {}
      # additional http headers
      headers['Accept'] = 'application/json'
      headers['Content-Type'] = 'multipart/form-data'

      # http body
      post_body = nil
      # form parameter
      form_parameter_hash = {}
      form_parameter_hash["image"] = image
      


    # authentication setting
    require_auth = true

      response = Swagger::Request.new(:POST, path, {:params=>queryopts,:headers=>headers, :form_params => form_parameter_hash, :body=>post_body, :require_auth => require_auth }).make.body
      UploadsResponse.new(response)

    end

  end
end


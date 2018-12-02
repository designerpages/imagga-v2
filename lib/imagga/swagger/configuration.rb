module Imagga
module Swagger

  class Configuration
    
    attr_accessor :format, :api_key, :username, :password, :auth_token, :scheme, :host, :base_path, :user_agent, :logger, :inject_format, :force_ending_format, :camelize_params, :api_key_type, :api_key_name, :api_key_prefix, :user_agent
    
    # Defaults go in here..
    def initialize
      @format = 'json'
      @scheme = 'https'
      @host = 'api.imagga.com:443'
      @base_path = '/v2'
      @user_agent = 'Swagger/Ruby/0.1.0/beta'
      @inject_format = false
      @force_ending_format = false
      @camelize_params = false
      # for API key/token authentication
      @api_key = '';
      @api_key_type = '';
      @api_key_name = '';
      @api_key_prefix = '';
      # for http basic authentication
      @username = ''
      @password = ''
      @user_agent = 'Swagger/Ruby/0.1.0/beta'
    end

  end

end
end


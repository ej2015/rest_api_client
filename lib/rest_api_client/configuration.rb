module RestApiClient 
  module Configuration

    attr_accessor :url

    def default_options
      { 
        url:     url
      }
    end 

    def default_middleware_config 
      lambda {|faraday|
        faraday.request  :json
        faraday.request  :url_encoded
        faraday.headers[:Accept] = 'application/json'
        faraday.headers['Content-Type'] = 'application/json'
        #faraday.options[:timeout] = 300
        faraday.adapter  Faraday.default_adapter
      }
    end

  end
end

module RestApiClient
  class Client
    include RestApiClient::Request
    include RestApiClient::Response
    include RestApiClient::Configuration

    class << self
      attr_accessor :url
    end 

    attr_accessor :options, :connection

    def initialize (options = {})
      @options = default_options.merge(options)
      @connection = Faraday.new(@options) do |faraday|
        faraday.request  :json
        faraday.request  :url_encoded
        faraday.headers[:Accept] = 'application/json'
        faraday.headers['Content-Type'] = 'application/json'
        #faraday.options[:timeout] = 300
        faraday.adapter  Faraday.default_adapter
      end
    end
  end

end

require 'faraday'
require 'faraday_middleware'
require 'active_support/core_ext/object/blank'
require_relative 'request'
require_relative 'configuration'
require_relative 'response'
require_relative 'error'

module RestApiClient
  class Client
    include RestApiClient::Request
    include RestApiClient::Response
    include RestApiClient::Configuration

    attr_accessor :options, :connection

    def initialize (options = {}, &block)
      @options = default_options.merge(options)
      middleware_config = block_given? ? block : default_middleware_config
      @connection = Faraday.new(@options, &middleware_config) 
    end
  end

end

require 'logger'

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
        faraday.response :json
        faraday.response :logger, logger
        #faraday.options[:timeout] = 300
        faraday.adapter  Faraday.default_adapter
      }
    end

    def logger
      log_output = $stdout
      if defined? Rails
        log_out = 'logs/api_logs.txt' unless Rails.env.development?
      end
      logger = Logger.new log_output
      logger.level = Logger::INFO
      logger
    end

  end
end

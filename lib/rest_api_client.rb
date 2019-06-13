#require 'rest_api_client/version'
#require 'rest_api_client/client'
Dir['./rest_api_client'].each { |f| require_relative f }

module RestApiClient
  def self.client(options = {})
    Client.new(options)
  end
end

require 'rest_api_client/version'
require 'rest_api_client/client'

module RestApiClient
  def self.client(options = {})
    Client.new(options)
  end
end

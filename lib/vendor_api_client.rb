require 'vendor_api_client/version'
require 'vendor_api_client/client'

module VendorApiClient
  def self.client(options = {})
    Client.new(options)
  end
end

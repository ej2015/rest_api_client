$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)

require "bundler/setup"
require "rest_api_client"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

class Client < RestApiClient::Client
  def initialize(options = {}, &block)
    @url = 'http://mysite.com'
    super
  end

  def quotes(query)
    get('/api/quotes', params: query)
  end

  def buy(payload)
    post('/api/cars', body: payload)
  end
end

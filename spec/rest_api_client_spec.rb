require "spec_helper"

RSpec.describe RestApiClient do

  let(:client) { Client.new }

  it "has a version number" do
    expect(RestApiClient::VERSION).not_to be nil
  end

  it "gets the default options" do
    expect(client.connection.url_prefix.to_s).to eq 'http://mysite.com/api'
  end
end

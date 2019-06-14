require "spec_helper"
require "fakeweb"

RSpec.describe RestApiClient do
  FakeWeb.allow_net_connect = false

  let(:client) { Client.new }
  let(:success_msg) { { 'id' =>  111 } }

  it "has a version number" do
    expect(RestApiClient::VERSION).not_to be nil
  end

  it "gets the url_prefix" do
    expect(client.connection.url_prefix.to_s).to eq 'http://mysite.com/'
  end

  describe '#get' do
    it 'works' do
      FakeWeb.register_uri :get, "http://mysite.com/api/quotes?model=honda", body: success_msg.to_json
      expect(client.quotes({model: 'honda'})). to eq success_msg
    end
  end

  describe '#post' do
    it 'works' do
      FakeWeb.register_uri :post, "http://mysite.com/api/cars", body: success_msg.to_json
      expect(client.buy({model: 'honda'})). to eq success_msg
    end
  end



end

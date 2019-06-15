module RestApiClient 
  module Response

    def self.create(response)
      status = response.status
      case status
      when 200 
        response.body
      else
        raise  RestApiClient::Error.new(response.body)
      end
    end
  end
end

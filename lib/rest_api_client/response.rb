module RestApiClient 
  module Response

    def self.create(response)
      status = response.status
      case status
      when 200 
        if response.body.present?
          JSON.parse response.body
        else
          response.body
        end
      else
        if response.body.present?
          JSON.parse response.body
        else
          response.body
        end
      end
    rescue JSON::ParserError => e
      { "error" => response.body }
    end
  end
end

module VendorApiClient 
  module Configuration
    URL =INSURER_CONFIG["vendor"]["url"].freeze

    def default_url
      URL 
    end

    def url
      self.class.url || default_url
    end

    def default_options
      { url:     url
      }
    end 

  end
end

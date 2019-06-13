module RestApiClient 
    module Request

			[:get, :post, :put, :delete].each do |method|
				define_method(method) do |path, body: {}, params: {}, opts: {}|
          request(method, path, body, params, opts)
				end
      end

      def request(method, path, body, params, opts)
        response = connection.send(method) do | request|
					request.headers = request.headers.merge(opts[:headers]) if opts[:headers].present?
          request.path = URI.encode(path)
				  request.params = params if params.present?
          request.body = body if body.present?
        end
        response = Response.create(response) 
			rescue Exception => e
        #handle exception
			end

    end
end

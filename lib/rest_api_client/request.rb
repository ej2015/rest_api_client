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
          request.path = path
				  request.params = params if params.present?
          request.body = body if body.present?
        end
        puts connection.params
        response = Response.create(response) 
			end

    end
end

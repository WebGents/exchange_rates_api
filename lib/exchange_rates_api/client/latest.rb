module ExchangeRatesApi
  class Client
    # methods for request
    module Latest
      def latest(args = {})
        body = {}
        self.class.get("#{provider(args[:provider])}/latest", query: body).parsed_response
      end
    end
  end
end

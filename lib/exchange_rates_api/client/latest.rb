module ExchangeRatesApi
  class Client
    # methods for request
    module Latest
      def latest(args = {})
        body = { base: base(args[:base]) }
        self.class.get("#{provider(args[:provider])}/latest", query: body).parsed_response
      end

      private

      def base(value)
        value || 'EUR'
      end
    end
  end
end

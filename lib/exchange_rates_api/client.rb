require 'httparty'
require_relative 'client/latest'

module ExchangeRatesApi
  # Client requests
  class Client
    include HTTParty
    include ExchangeRatesApi::Client::Latest

    def initialize; end

    private

    def provider(name)
      case name
        when 'fixer' then 'https://data.fixer.io/api'
        else 'https://api.exchangeratesapi.io'
      end
    end
  end
end

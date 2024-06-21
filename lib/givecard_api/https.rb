require 'rest-client'
require_relative 'logger'
require_relative 'configuration'

module GivecardApi
    class Https
        # need to get correct API URL
        API_URL = 'https://api.givecard.com'.freeze
        SANDBOX_API_URL = 'https://api.dev.givecard.dev/api/v1'.freeze        

        def initialize
            @api_token = GivecardApi.configuration.api_token
            @url = determine_base_url
        end

        def call(_method, endpoint, payload = {}, headers = {})
            headers = self.class.default_headers.merge(headers)
            url = "#{@url}/#{endpoint}"

            response = RestClient.send(_method, url, payload.to_json, headers)
            handle_response(response)
        rescue RestClient::ExceptionWithResponse => e
            GivecardApi::Logger.log("API call to #{url} failed with response: #{e.response}")
            respond_with(e.response.code, e.response.body)
        rescue RestClient::Unauthorized => e
            GivecardApi::Logger.log("Unauthorized API call to #{url}: #{e.response.body}")
            respond_with(401, e.response.body)
        rescue RestClient::ServiceUnavailable => e
            GivecardApi::Logger.log("Service unavailable for API call to #{url}: #{e.response.body}")
            respond_with(503, e.response.body)
        rescue StandardError => e
            GivecardApi::Logger.log("API call to #{url} failed with error: #{e.message}")
            respond_with(500, e.message)
        end

        
        private
        
        def self.default_headers
            { Authorization: "Bearer #{GivecardApi.configuration.api_token}", content_type: :json, accept: :json }
        end
        
        def determine_base_url
            mode = GivecardApi.configuration.givecard_api_mode || 'sandbox'
            mode.downcase == 'live' ? API_URL : SANDBOX_API_URL
        end
        
        def respond_with(code, body)
            Struct.new(:code, :body).new(code, body)
        end
        
        def self.handle_response(response)
            case response.code
            when 200..299
                response
            else
                GivecardApi::Logger.log("Request failed with response code: #{response.code}")
                respond_with(response.code, response.body)
            end
        end
    end
end

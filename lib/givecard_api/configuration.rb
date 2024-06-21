# lib/givecard_api/configuration.rb

module GivecardApi
    class Configuration
        attr_accessor :api_token, :givecard_api_mode

        def initialize
            @api_token = ENV['GIVECARD_API_APP_TOKEN'] || nil
            @givecard_api_mode = ENV['GIVECARD_API_MODE'] || nil
        end
    end
end
module GivecardApi
    module Reporting
        class GetCards
            def self.call(program_id = '')
                _path = "cards?programId=#{program_id}"
                https_instance = GivecardApi::Https.new
                https_instance.call(:get, _path)
            end
        end
    end
end

module GivecardApi
    module Reporting
        class GetCards
            def self.call(program_id = '')
                _path = "cards"
                _params = { programId: program_id }

                instance = GivecardApi::Https.new
                https_instance = GivecardApi::Https.new
                instance.call(:get, _path, _params)
            end
        end
    end
end

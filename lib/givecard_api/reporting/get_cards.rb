module GivecardApi
    module Reporting
        class GetCards
            def self.call(program_id = '')
                _path = "cards"
                _params = { programId: program_id }

                GivecardApi::Https.call(:post, _path, _params)
            end
        end
    end
end

module GivecardApi
    module Superbusiness
        class GetPrograms
            def self.call()
                _path = "business/programs"
                https_instance = GivecardApi::Https.new
                https_instance.call(:get, _path)
            end
        end
    end
end

module GivecardApi
    module ManageCard
        class LockCard
            def self.call(card_id = '')
                _path = "cards/#{card_id}/lock"
                payload = {}
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

module GivecardApi
    module ManageCard
        class SetPin
            def self.call(card_id = '', newPin = '')
                _path = "cards/#{card_id}/pin"
                payload = { "newPin" => newPin }
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

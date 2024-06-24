module GivecardApi
    module ManageCard
        class SetPin
            def self.call(card_id = '', newPin = '')
                _path = "cards/#{card_id}/pin"

                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, newPin)
            end
        end
    end
end

module GivecardApi
    module ManageCard
        class ReassociateCard
            def self.call(card_id = '', newCardId = '')
                _path = "cards/#{card_id}/reassociate"
                payload = { "newCardId" => newCardId }
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

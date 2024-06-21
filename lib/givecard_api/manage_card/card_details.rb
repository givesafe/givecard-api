module GivecardApi
    module ManageCard
        class CardDetails
            def self.call(card_id = '')
                _path = "cards/#{card_id}/details"

                GivecardApi::Https.call(:post, _path)
            end
        end
    end
end

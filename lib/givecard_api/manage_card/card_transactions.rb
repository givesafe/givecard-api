module GivecardApi
    module ManageCard
        class CardTransactionHistory
            def self.call(card_id = '')
                _path = "cards/#{card_id}/transactions"
                
                https_instance = GivecardApi::Https.new
                https_instance.call(:get, _path)
            end
        end
    end
end
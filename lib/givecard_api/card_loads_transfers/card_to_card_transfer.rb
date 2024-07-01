module GivecardApi
    module CardLoadsTransfers
        class CardToCardTransfer
            def self.call(amount = 0, from_card_id = '', to_card_id = '', reason = '')
                _path = "cards/cardToCardTransfer"
                payload = { 
                    "amount" => amount.to_s,
                    "fromCardId" => from_card_id,
                    "toCardId" => to_card_id,
                    "reason" => reason
                }
                  
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

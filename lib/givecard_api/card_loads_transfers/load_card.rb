module GivecardApi
    module CardLoadsTransfers
        class LoadCard
            def self.call(card_id = '', program_id = '', amount = 0)
                _path = "cards/load"
                payload = { 
                    "cardIds" => [card_id],
                    "amount" => amount.to_s,
                    "programId" => program_id
                }
                  
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

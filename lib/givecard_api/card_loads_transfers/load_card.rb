module GivecardApi
    module CardLoadsTransfers
        class LoadCard
            def self.call(card_id = '', program_id = '', amount = 0)
                # {
                #     "cardIds": [
                #         "SAMAI3ENCO"
                #     ],
                #     "amount": "5",
                #     "programId": "f891b0cc-0903-4448-9cec-dda34a77f8c0"
                # }
                _path = "cards/load"
                payload = { 
                    "cardIds" => [card_id],
                    "amount" => [amount],
                    "programId" => [program_id],
                }
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

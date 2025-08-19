module GivecardApi
    module ManageCard
        class WithdrawFunds
            def self.call(card_id = '', amount = 0, reason = "")
                _path = "cards/#{card_id}/withdrawFunds"
                payload = {
                    "amount" => amount.to_s,
                    "reason" => reason 
                }
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

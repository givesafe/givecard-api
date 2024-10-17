module GivecardApi
    module FundingAccount
        class FundingAccountTransfer
            def self.call(amount = 0, destination = '', source = 'super')
                _path = "business/fundingAccount/transfer"

                payload = { 
                    "amount" => amount.to_s,
                    "destination" => destination,
                    "source" => source
                }

                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

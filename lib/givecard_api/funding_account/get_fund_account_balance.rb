module GivecardApi
    module FundingAccount
        class GetFundAccountBalance
            def self.call(program_id = '')
                _path = "business/fundingAccount/balance?programId=#{program_id}"

                https_instance = GivecardApi::Https.new
                https_instance.call(:get, _path)
            end
        end
    end
end

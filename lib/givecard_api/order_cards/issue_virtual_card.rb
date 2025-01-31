module GivecardApi
    module OrderCards
        class IssueVirtualCard
            def self.call(email, program_id = '')
                _path = "cards/issueVirtual"
                payload = { 
                    "emailAddresses" => [email.to_s],
                    "programId" => program_id
                }
                  
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

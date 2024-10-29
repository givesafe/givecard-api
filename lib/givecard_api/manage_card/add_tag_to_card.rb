module GivecardApi
    module ManageCard
        class AddTagToCard
            def self.call(card_id = '', program_id = '', tag_name = '', tag_value = '')
                _path = "cards/tag"
                payload = { 
                    "cardIds" => [card_id],
                    "tagName" => tag_name.to_s,
                    "tagValue" => tag_value.to_s,
                    "programId" => program_id
                }
                  
                https_instance = GivecardApi::Https.new
                https_instance.call(:post, _path, payload)
            end
        end
    end
end

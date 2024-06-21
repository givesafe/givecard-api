module GivecardApi
    class Logger
      def self.log(message)
        puts "is_disabled?"
        puts is_disabled?
        puts "---------"
        return if is_disabled?
        
        puts message
      end
  
      private
  
      def self.is_disabled?
        ENV.fetch('GIVECARD_API_LOGGER_ENABLED', 'true') == 'false'
      end
    end
end
# frozen_string_literal: true

require_relative "givecard_api/version"
require_relative "givecard_api/https"
require_relative "givecard_api/configuration"
require_relative "givecard_api/card_loads_transfers/load_card"
require_relative "givecard_api/reporting/get_cards"
require_relative "givecard_api/manage_card/card_details"
require_relative "givecard_api/manage_card/set_pin"

module GivecardApi
  class Error < StandardError; end
  class InheritableOnlyClassTryingToInitializeError < StandardError; end
  class MissingRequiredArgumentError < ArgumentError; end
  class MissingRequiredConfig < StandardError; end
  # Your code goes here...

  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end
end

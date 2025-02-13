# frozen_string_literal: true

require_relative "givecard_api/version"
require_relative "givecard_api/https"
require_relative "givecard_api/configuration"
require_relative "givecard_api/card_loads_transfers/card_to_card_transfer"
require_relative "givecard_api/card_loads_transfers/load_card"
require_relative "givecard_api/funding_account/get_fund_account_balance"
require_relative "givecard_api/funding_account/funding_account_transfer"
require_relative "givecard_api/reporting/get_cards"
require_relative "givecard_api/manage_card/add_tag_to_card"
require_relative "givecard_api/manage_card/card_balance"
require_relative "givecard_api/manage_card/card_details"
require_relative "givecard_api/manage_card/card_load_history"
require_relative "givecard_api/manage_card/card_transactions"
require_relative "givecard_api/manage_card/close_card"
require_relative "givecard_api/manage_card/reassociate_card"
require_relative "givecard_api/manage_card/set_pin"
require_relative "givecard_api/order_cards/issue_virtual_card"
require_relative "givecard_api/superbusiness/get_programs"

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

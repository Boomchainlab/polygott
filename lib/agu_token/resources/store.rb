# frozen_string_literal: true

module AguToken
  module Resources
    class Store
      # @return [AguToken::Resources::Store::Order]
      attr_reader :order

      # Returns a map of status codes to quantities
      #
      # @overload list_inventory(request_options: {})
      #
      # @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Integer}]
      #
      # @see AguToken::Models::StoreListInventoryParams
      def list_inventory(params = {})
        @client.request(
          method: :get,
          path: "store/inventory",
          model: AguToken::Internal::Type::HashOf[Integer],
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [AguToken::Client]
      def initialize(client:)
        @client = client
        @order = AguToken::Resources::Store::Order.new(client: client)
      end
    end
  end
end

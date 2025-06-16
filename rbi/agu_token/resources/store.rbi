# typed: strong

module AguToken
  module Resources
    class Store
      sig { returns(AguToken::Resources::Store::Order) }
      attr_reader :order

      # Returns a map of status codes to quantities
      sig do
        params(request_options: AguToken::RequestOptions::OrHash).returns(
          T::Hash[Symbol, Integer]
        )
      end
      def list_inventory(request_options: {})
      end

      # @api private
      sig { params(client: AguToken::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

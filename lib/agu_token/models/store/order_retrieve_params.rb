# frozen_string_literal: true

module AguToken
  module Models
    module Store
      # @see AguToken::Resources::Store::Order#retrieve
      class OrderRetrieveParams < AguToken::Internal::Type::BaseModel
        extend AguToken::Internal::Type::RequestParameters::Converter
        include AguToken::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end

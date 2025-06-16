# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::User#create_with_list
    class UserCreateWithListParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!attribute items
      #
      #   @return [Array<AguToken::Models::UserAPI>, nil]
      optional :items, -> { AguToken::Internal::Type::ArrayOf[AguToken::UserAPI] }

      # @!method initialize(items: nil, request_options: {})
      #   @param items [Array<AguToken::Models::UserAPI>]
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

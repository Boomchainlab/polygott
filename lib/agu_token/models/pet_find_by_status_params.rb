# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::Pet#find_by_status
    class PetFindByStatusParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!attribute status
      #   Status values that need to be considered for filter
      #
      #   @return [Symbol, AguToken::Models::PetFindByStatusParams::Status, nil]
      optional :status, enum: -> { AguToken::PetFindByStatusParams::Status }

      # @!method initialize(status: nil, request_options: {})
      #   @param status [Symbol, AguToken::Models::PetFindByStatusParams::Status] Status values that need to be considered for filter
      #
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]

      # Status values that need to be considered for filter
      module Status
        extend AguToken::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end

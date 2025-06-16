# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::Pet#delete
    class PetDeleteParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

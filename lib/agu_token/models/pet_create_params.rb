# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::Pet#create
    class PetCreateParams < AguToken::Models::PetAPI
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::User#logout
    class UserLogoutParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

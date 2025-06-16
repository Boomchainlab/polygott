# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::User#login
    class UserLoginParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!attribute password
      #   The password for login in clear text
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute username
      #   The user name for login
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(password: nil, username: nil, request_options: {})
      #   @param password [String] The password for login in clear text
      #
      #   @param username [String] The user name for login
      #
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

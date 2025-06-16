# typed: strong

module AguToken
  module Models
    class UserCreateWithListParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(AguToken::UserCreateWithListParams, AguToken::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[AguToken::UserAPI])) }
      attr_reader :items

      sig { params(items: T::Array[AguToken::UserAPI::OrHash]).void }
      attr_writer :items

      sig do
        params(
          items: T::Array[AguToken::UserAPI::OrHash],
          request_options: AguToken::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(items: nil, request_options: {})
      end

      sig do
        override.returns(
          {
            items: T::Array[AguToken::UserAPI],
            request_options: AguToken::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

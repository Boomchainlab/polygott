# typed: strong

module AguToken
  module Models
    module Store
      class OrderCreateParams < AguToken::Models::Order
        extend AguToken::Internal::Type::RequestParameters::Converter
        include AguToken::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              AguToken::Store::OrderCreateParams,
              AguToken::Internal::AnyHash
            )
          end

        sig do
          params(request_options: AguToken::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: AguToken::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end

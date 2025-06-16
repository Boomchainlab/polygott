# typed: strong

module AguToken
  module Models
    class PetUploadImageParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(AguToken::PetUploadImageParams, AguToken::Internal::AnyHash)
        end

      # Additional Metadata
      sig { returns(T.nilable(String)) }
      attr_reader :additional_metadata

      sig { params(additional_metadata: String).void }
      attr_writer :additional_metadata

      sig { returns(T.nilable(AguToken::Internal::FileInput)) }
      attr_reader :image

      sig { params(image: AguToken::Internal::FileInput).void }
      attr_writer :image

      sig do
        params(
          additional_metadata: String,
          image: AguToken::Internal::FileInput,
          request_options: AguToken::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Additional Metadata
        additional_metadata: nil,
        image: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            additional_metadata: String,
            image: AguToken::Internal::FileInput,
            request_options: AguToken::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end

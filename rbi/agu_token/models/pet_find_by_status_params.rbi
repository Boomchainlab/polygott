# typed: strong

module AguToken
  module Models
    class PetFindByStatusParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(AguToken::PetFindByStatusParams, AguToken::Internal::AnyHash)
        end

      # Status values that need to be considered for filter
      sig do
        returns(T.nilable(AguToken::PetFindByStatusParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: AguToken::PetFindByStatusParams::Status::OrSymbol).void
      end
      attr_writer :status

      sig do
        params(
          status: AguToken::PetFindByStatusParams::Status::OrSymbol,
          request_options: AguToken::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            status: AguToken::PetFindByStatusParams::Status::OrSymbol,
            request_options: AguToken::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Status values that need to be considered for filter
      module Status
        extend AguToken::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, AguToken::PetFindByStatusParams::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE =
          T.let(
            :available,
            AguToken::PetFindByStatusParams::Status::TaggedSymbol
          )
        PENDING =
          T.let(:pending, AguToken::PetFindByStatusParams::Status::TaggedSymbol)
        SOLD =
          T.let(:sold, AguToken::PetFindByStatusParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[AguToken::PetFindByStatusParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end

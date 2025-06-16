# typed: strong

module AguToken
  module Models
    class PetAPI < AguToken::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(AguToken::PetAPI, AguToken::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :photo_urls

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(AguToken::Category)) }
      attr_reader :category

      sig { params(category: AguToken::Category::OrHash).void }
      attr_writer :category

      # pet status in the store
      sig { returns(T.nilable(AguToken::PetAPI::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: AguToken::PetAPI::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(T::Array[AguToken::PetAPI::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[AguToken::PetAPI::Tag::OrHash]).void }
      attr_writer :tags

      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: AguToken::Category::OrHash,
          status: AguToken::PetAPI::Status::OrSymbol,
          tags: T::Array[AguToken::PetAPI::Tag::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil
      )
      end

      sig do
        override.returns(
          {
            name: String,
            photo_urls: T::Array[String],
            id: Integer,
            category: AguToken::Category,
            status: AguToken::PetAPI::Status::TaggedSymbol,
            tags: T::Array[AguToken::PetAPI::Tag]
          }
        )
      end
      def to_hash
      end

      # pet status in the store
      module Status
        extend AguToken::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, AguToken::PetAPI::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AVAILABLE = T.let(:available, AguToken::PetAPI::Status::TaggedSymbol)
        PENDING = T.let(:pending, AguToken::PetAPI::Status::TaggedSymbol)
        SOLD = T.let(:sold, AguToken::PetAPI::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[AguToken::PetAPI::Status::TaggedSymbol])
        end
        def self.values
        end
      end

      class Tag < AguToken::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(AguToken::PetAPI::Tag, AguToken::Internal::AnyHash)
          end

        sig { returns(T.nilable(Integer)) }
        attr_reader :id

        sig { params(id: Integer).void }
        attr_writer :id

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(id: Integer, name: String).returns(T.attached_class) }
        def self.new(id: nil, name: nil)
        end

        sig { override.returns({ id: Integer, name: String }) }
        def to_hash
        end
      end
    end
  end
end

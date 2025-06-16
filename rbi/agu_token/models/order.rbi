# typed: strong

module AguToken
  module Models
    class Order < AguToken::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(AguToken::Order, AguToken::Internal::AnyHash) }

      sig { returns(T.nilable(Integer)) }
      attr_reader :id

      sig { params(id: Integer).void }
      attr_writer :id

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :complete

      sig { params(complete: T::Boolean).void }
      attr_writer :complete

      sig { returns(T.nilable(Integer)) }
      attr_reader :pet_id

      sig { params(pet_id: Integer).void }
      attr_writer :pet_id

      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      sig { returns(T.nilable(Time)) }
      attr_reader :ship_date

      sig { params(ship_date: Time).void }
      attr_writer :ship_date

      # Order Status
      sig { returns(T.nilable(AguToken::Order::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: AguToken::Order::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          id: Integer,
          complete: T::Boolean,
          pet_id: Integer,
          quantity: Integer,
          ship_date: Time,
          status: AguToken::Order::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        complete: nil,
        pet_id: nil,
        quantity: nil,
        ship_date: nil,
        # Order Status
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            complete: T::Boolean,
            pet_id: Integer,
            quantity: Integer,
            ship_date: Time,
            status: AguToken::Order::Status::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Order Status
      module Status
        extend AguToken::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, AguToken::Order::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLACED = T.let(:placed, AguToken::Order::Status::TaggedSymbol)
        APPROVED = T.let(:approved, AguToken::Order::Status::TaggedSymbol)
        DELIVERED = T.let(:delivered, AguToken::Order::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[AguToken::Order::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end

# typed: strong

module AguToken
  module Models
    StoreListInventoryResponse =
      T.let(
        AguToken::Internal::Type::HashOf[Integer],
        AguToken::Internal::Type::Converter
      )
  end
end

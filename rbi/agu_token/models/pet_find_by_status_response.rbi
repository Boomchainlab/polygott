# typed: strong

module AguToken
  module Models
    PetFindByStatusResponse =
      T.let(
        AguToken::Internal::Type::ArrayOf[AguToken::PetAPI],
        AguToken::Internal::Type::Converter
      )
  end
end

# frozen_string_literal: true

module AguToken
  module Models
    # @type [AguToken::Internal::Type::Converter]
    PetFindByStatusResponse = AguToken::Internal::Type::ArrayOf[-> { AguToken::PetAPI }]
  end
end

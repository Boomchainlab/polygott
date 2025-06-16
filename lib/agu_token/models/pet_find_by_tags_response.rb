# frozen_string_literal: true

module AguToken
  module Models
    # @type [AguToken::Internal::Type::Converter]
    PetFindByTagsResponse = AguToken::Internal::Type::ArrayOf[-> { AguToken::PetAPI }]
  end
end

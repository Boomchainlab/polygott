# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::Pet#find_by_tags
    class PetFindByTagsParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!attribute tags
      #   Tags to filter by
      #
      #   @return [Array<String>, nil]
      optional :tags, AguToken::Internal::Type::ArrayOf[String]

      # @!method initialize(tags: nil, request_options: {})
      #   @param tags [Array<String>] Tags to filter by
      #
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

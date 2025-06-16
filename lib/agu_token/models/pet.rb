# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::Pet#create
    class PetAPI < AguToken::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute photo_urls
      #
      #   @return [Array<String>]
      required :photo_urls, AguToken::Internal::Type::ArrayOf[String], api_name: :photoUrls

      # @!attribute id
      #
      #   @return [Integer, nil]
      optional :id, Integer

      # @!attribute category
      #
      #   @return [AguToken::Models::Category, nil]
      optional :category, -> { AguToken::Category }

      # @!attribute status
      #   pet status in the store
      #
      #   @return [Symbol, AguToken::Models::PetAPI::Status, nil]
      optional :status, enum: -> { AguToken::PetAPI::Status }

      # @!attribute tags
      #
      #   @return [Array<AguToken::Models::PetAPI::Tag>, nil]
      optional :tags, -> { AguToken::Internal::Type::ArrayOf[AguToken::PetAPI::Tag] }

      # @!method initialize(name:, photo_urls:, id: nil, category: nil, status: nil, tags: nil)
      #   @param name [String]
      #
      #   @param photo_urls [Array<String>]
      #
      #   @param id [Integer]
      #
      #   @param category [AguToken::Models::Category]
      #
      #   @param status [Symbol, AguToken::Models::PetAPI::Status] pet status in the store
      #
      #   @param tags [Array<AguToken::Models::PetAPI::Tag>]

      # pet status in the store
      #
      # @see AguToken::Models::PetAPI#status
      module Status
        extend AguToken::Internal::Type::Enum

        AVAILABLE = :available
        PENDING = :pending
        SOLD = :sold

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Tag < AguToken::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer, nil]
        optional :id, Integer

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(id: nil, name: nil)
        #   @param id [Integer]
        #   @param name [String]
      end
    end
  end
end

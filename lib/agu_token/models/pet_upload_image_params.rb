# frozen_string_literal: true

module AguToken
  module Models
    # @see AguToken::Resources::Pet#upload_image
    class PetUploadImageParams < AguToken::Internal::Type::BaseModel
      extend AguToken::Internal::Type::RequestParameters::Converter
      include AguToken::Internal::Type::RequestParameters

      # @!attribute additional_metadata
      #   Additional Metadata
      #
      #   @return [String, nil]
      optional :additional_metadata, String

      # @!attribute image
      #
      #   @return [Pathname, StringIO, IO, String, AguToken::FilePart, nil]
      optional :image, AguToken::Internal::Type::FileInput

      # @!method initialize(additional_metadata: nil, image: nil, request_options: {})
      #   @param additional_metadata [String] Additional Metadata
      #
      #   @param image [Pathname, StringIO, IO, String, AguToken::FilePart]
      #
      #   @param request_options [AguToken::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end

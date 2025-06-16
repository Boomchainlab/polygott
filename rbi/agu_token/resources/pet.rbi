# typed: strong

module AguToken
  module Resources
    class Pet
      # Add a new pet to the store
      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: AguToken::Category::OrHash,
          status: AguToken::PetAPI::Status::OrSymbol,
          tags: T::Array[AguToken::PetAPI::Tag::OrHash],
          request_options: AguToken::RequestOptions::OrHash
        ).returns(AguToken::PetAPI)
      end
      def create(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil,
        request_options: {}
      )
      end

      # Returns a single pet
      sig do
        params(
          pet_id: Integer,
          request_options: AguToken::RequestOptions::OrHash
        ).returns(AguToken::PetAPI)
      end
      def retrieve(
        # ID of pet to return
        pet_id,
        request_options: {}
      )
      end

      # Update an existing pet by Id
      sig do
        params(
          name: String,
          photo_urls: T::Array[String],
          id: Integer,
          category: AguToken::Category::OrHash,
          status: AguToken::PetAPI::Status::OrSymbol,
          tags: T::Array[AguToken::PetAPI::Tag::OrHash],
          request_options: AguToken::RequestOptions::OrHash
        ).returns(AguToken::PetAPI)
      end
      def update(
        name:,
        photo_urls:,
        id: nil,
        category: nil,
        # pet status in the store
        status: nil,
        tags: nil,
        request_options: {}
      )
      end

      # delete a pet
      sig do
        params(
          pet_id: Integer,
          request_options: AguToken::RequestOptions::OrHash
        ).void
      end
      def delete(
        # Pet id to delete
        pet_id,
        request_options: {}
      )
      end

      # Multiple status values can be provided with comma separated strings
      sig do
        params(
          status: AguToken::PetFindByStatusParams::Status::OrSymbol,
          request_options: AguToken::RequestOptions::OrHash
        ).returns(T::Array[AguToken::PetAPI])
      end
      def find_by_status(
        # Status values that need to be considered for filter
        status: nil,
        request_options: {}
      )
      end

      # Multiple tags can be provided with comma separated strings. Use tag1, tag2, tag3
      # for testing.
      sig do
        params(
          tags: T::Array[String],
          request_options: AguToken::RequestOptions::OrHash
        ).returns(T::Array[AguToken::PetAPI])
      end
      def find_by_tags(
        # Tags to filter by
        tags: nil,
        request_options: {}
      )
      end

      # Updates a pet in the store with form data
      sig do
        params(
          pet_id: Integer,
          name: String,
          status: String,
          request_options: AguToken::RequestOptions::OrHash
        ).void
      end
      def update_by_id(
        # ID of pet that needs to be updated
        pet_id,
        # Name of pet that needs to be updated
        name: nil,
        # Status of pet that needs to be updated
        status: nil,
        request_options: {}
      )
      end

      # uploads an image
      sig do
        params(
          pet_id: Integer,
          additional_metadata: String,
          image: AguToken::Internal::FileInput,
          request_options: AguToken::RequestOptions::OrHash
        ).returns(AguToken::Models::PetUploadImageResponse)
      end
      def upload_image(
        # Path param: ID of pet to update
        pet_id,
        # Query param: Additional Metadata
        additional_metadata: nil,
        # Body param:
        image: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: AguToken::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end

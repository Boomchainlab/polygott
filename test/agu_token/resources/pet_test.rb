# frozen_string_literal: true

require_relative "../test_helper"

class AguToken::Test::Resources::PetTest < AguToken::Test::ResourceTest
  def test_create_required_params
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.create(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => AguToken::PetAPI
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(AguToken::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: AguToken::Category | nil,
        status: AguToken::PetAPI::Status | nil,
        tags: ^(AguToken::Internal::Type::ArrayOf[AguToken::PetAPI::Tag]) | nil
      }
    end
  end

  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.retrieve(0)

    assert_pattern do
      response => AguToken::PetAPI
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(AguToken::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: AguToken::Category | nil,
        status: AguToken::PetAPI::Status | nil,
        tags: ^(AguToken::Internal::Type::ArrayOf[AguToken::PetAPI::Tag]) | nil
      }
    end
  end

  def test_update_required_params
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.update(name: "doggie", photo_urls: ["string"])

    assert_pattern do
      response => AguToken::PetAPI
    end

    assert_pattern do
      response => {
        name: String,
        photo_urls: ^(AguToken::Internal::Type::ArrayOf[String]),
        id: Integer | nil,
        category: AguToken::Category | nil,
        status: AguToken::PetAPI::Status | nil,
        tags: ^(AguToken::Internal::Type::ArrayOf[AguToken::PetAPI::Tag]) | nil
      }
    end
  end

  def test_delete
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_find_by_status
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.find_by_status

    assert_pattern do
      response => ^(AguToken::Internal::Type::ArrayOf[AguToken::PetAPI])
    end
  end

  def test_find_by_tags
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.find_by_tags

    assert_pattern do
      response => ^(AguToken::Internal::Type::ArrayOf[AguToken::PetAPI])
    end
  end

  def test_update_by_id
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.update_by_id(0)

    assert_pattern do
      response => nil
    end
  end

  def test_upload_image
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.pet.upload_image(0)

    assert_pattern do
      response => AguToken::Models::PetUploadImageResponse
    end

    assert_pattern do
      response => {
        code: Integer | nil,
        message: String | nil,
        type: String | nil
      }
    end
  end
end

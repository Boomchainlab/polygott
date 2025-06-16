# frozen_string_literal: true

require_relative "../test_helper"

class AguToken::Test::Resources::UserTest < AguToken::Test::ResourceTest
  def test_create
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.user.create

    assert_pattern do
      response => AguToken::UserAPI
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.user.retrieve("username")

    assert_pattern do
      response => AguToken::UserAPI
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_update
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.user.update("username")

    assert_pattern do
      response => nil
    end
  end

  def test_delete
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.user.delete("username")

    assert_pattern do
      response => nil
    end
  end

  def test_create_with_list
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.user.create_with_list

    assert_pattern do
      response => AguToken::UserAPI
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        password: String | nil,
        phone: String | nil,
        username: String | nil,
        user_status: Integer | nil
      }
    end
  end

  def test_login
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.user.login

    assert_pattern do
      response => String
    end
  end

  def test_logout
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.user.logout

    assert_pattern do
      response => nil
    end
  end
end

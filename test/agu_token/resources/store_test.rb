# frozen_string_literal: true

require_relative "../test_helper"

class AguToken::Test::Resources::StoreTest < AguToken::Test::ResourceTest
  def test_list_inventory
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.store.list_inventory

    assert_pattern do
      response => ^(AguToken::Internal::Type::HashOf[Integer])
    end
  end
end

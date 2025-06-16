# frozen_string_literal: true

require_relative "../../test_helper"

class AguToken::Test::Resources::Store::OrderTest < AguToken::Test::ResourceTest
  def test_create
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.store.order.create

    assert_pattern do
      response => AguToken::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: AguToken::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: AguToken::Order::Status | nil
      }
    end
  end

  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.store.order.retrieve(0)

    assert_pattern do
      response => AguToken::Order
    end

    assert_pattern do
      response => {
        id: Integer | nil,
        complete: AguToken::Internal::Type::Boolean | nil,
        pet_id: Integer | nil,
        quantity: Integer | nil,
        ship_date: Time | nil,
        status: AguToken::Order::Status | nil
      }
    end
  end

  def test_delete
    skip("skipped: tests are disabled for the time being")

    response = @agu_token.store.order.delete(0)

    assert_pattern do
      response => nil
    end
  end
end

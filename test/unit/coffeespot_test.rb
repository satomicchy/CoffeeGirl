require 'test_helper'

class CoffeespotTest < ActiveSupport::TestCase
  test "has many events" do
    assert_equal :has_many, Coffeespot.reflect_on_association(:events).macro
  end
end

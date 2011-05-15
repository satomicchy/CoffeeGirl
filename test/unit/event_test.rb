require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "has many reports" do
    assert_equal :has_many, Event.reflect_on_association(:reports).macro
  end
end

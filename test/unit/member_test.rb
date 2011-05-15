require 'test_helper'

class MemberTest < ActiveSupport::TestCase
  test "has many reports" do
    assert_equal :has_many, Member.reflect_on_association(:reports).macro
  end
end

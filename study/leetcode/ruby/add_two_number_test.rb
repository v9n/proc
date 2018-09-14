require 'minitest/autorun'
require_relative './add_two_number'

class TestCase < MiniTest::Test
  def test_add_same_length
    l1 = value_to_list(324)
    l2 = value_to_list(567)
    result = add_two_numbers(l1, l2)
    assert_equal list_to_value(result), 891
  end
end

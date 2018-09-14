class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
  end
end

def list_to_value(node)
  value = 0
  digit = 0

  while node
    value = node.val * (10 ** digit) + value
    digit += 1
    node = node.next
  end

  value
end

def value_to_list(value)
  head = ListNode.new(value % 10)
  node = head

  loop do
    value =  (value - node.val) / 10
    break if value == 0

    node.next  = ListNode.new(value % 10)
    node       = node.next
  end

  head
end

def add_two_numbers(l1, l2)
  value_to_list(list_to_value(l1) + list_to_value(l2))
end

l1 = value_to_list(342)
l2 = value_to_list(465)
puts list_to_value(add_two_numbers(l1, l2))



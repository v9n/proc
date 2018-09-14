require 'minitest/autorun'

def find_median_sorted_arrays(nums1, nums2)
  nums = []

  i = 0
  j = 0

  while i < nums1.length || j < nums2.length
    if i >= nums1.length
      nums << nums2[j]
      j += 1
      next
    end

    if j >= nums2.length
      nums << nums1[i]
      i += 1
      next
    end

    if nums[i] == nums[j]
      nums << nums1[i]
      nums << nums2[j]
      i += 1
      j += 1
      next
    end

    if nums[i] < nums[j]
      nums << nums1[i]
      i += 1
    else
      nums << nums2[j]
      i += 1
    end
  end

  puts nums.join(',')

  if nums.length % 2 == 0
    (nums[nums.length/2 - 1] + nums[nums.length/2]).to_f / 2.0
  else
    nums[nums.length / 2].to_f
  end
end

class TestCase < MiniTest::Test
  def test_odd_length
    assert_equal find_median_sorted_arrays([1,3], [2]), 2
  end

  def test_even_length
    assert_equal find_median_sorted_arrays([1,2], [3,4]), 2.5
  end

  def test_even_length
    assert_equal find_median_sorted_arrays([1,2], [1, 1]), 1.0
  end
end

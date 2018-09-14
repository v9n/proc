# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
	nums.each_with_index do |number, index|
		nums[index+1..nums.length].each_with_index do |n2, idx2|
			if n2 + number == target
				return [index, index + 1 + idx2]
			end
		end
	end
end

puts two_sum([2, 7, 11, 15], 9)

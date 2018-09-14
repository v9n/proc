# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
	longest = 0
	current_longest = ""

  i = 0
  loop do
    break if s[i].nil? || i >= s.length

    if current_longest.include?(s[i])
      start = s.rindex(s[i], i - 1) + 1
      current_longest = s[start..i]
    else
      current_longest << s[i]
    end
    longest = current_longest.length if longest < current_longest.length

    i += 1
  end

  longest
end

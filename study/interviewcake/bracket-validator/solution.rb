module InterviewCake
  def self.bracket_validator(str)
    return true if str.nil? || str == ''
    stack = Array.new
    pair = {
      "}" => "{",
      "]" => "[",
      ")" => "(" 
    }
    str.length.times do |i|
      stack.push(str[i]) if ["{", "(", "["].include?(str[i])
      if ["}", ")", "]"].include?(str[i]) then
        return false if stack.empty?
        if pair[str[i]] == stack.last then
          stack.pop 
        else
          return false
        end
      end
    end
    stack.empty?
  end
end


result = File.readlines('input').map(&:strip).reduce(0) do |memo, line|
  memo += line.to_i
end

puts result

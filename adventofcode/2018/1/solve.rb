changes = File.readlines('input').map(&:strip).map(&:to_i)

result = changes.reduce(0) do |memo, line|
  memo += line
end

puts result

require 'set'
tracks = Set.new
memo = 0
changes.cycle do |line|
  memo += line

  if tracks.include?(memo)
    puts memo
    break
  end

  tracks << memo
end

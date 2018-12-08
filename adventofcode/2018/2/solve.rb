lines = File.readlines('input').map(&:strip)

require 'set'

twice = 0
three = 0
lines.map do |line|
  line.chars.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
end.each do |freq|
  s = Hash.new

  freq.each do |v|
    s[v.last] ||= Set.new
    s[v.last] << v.first
  end

  if s[3]
    three += 1
  end

  if s[2] && (s[2] != s[3])
    twice += 1
  end
end

puts "#{twice} * #{three}"
p twice * three


def delta(s1, s2)
  d = 0
  s1.length.times do |i|
    d += (s1[i] == s2[i] ? 0 : 1)
  end

  d
end

lines.each_with_index do |l1, i|
  lines.each_with_index do |l2, j|
    next if j == 0

    if delta(l1, l2) == 1
      p l1
      p l2
    end
  end
end

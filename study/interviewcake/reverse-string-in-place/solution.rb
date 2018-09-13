module InterviewCake
  def self.reverse_words(str)
    return '' if str.nil? || str == ''
    str = str.strip.gsub(/\s+/, " ")

    str = self.reverse_char(str)
    self.reverse_char_of_word(str)
  end

  def self.reverse_char(s)
    l = s.length - 1
    (s.length/2).times do |i|
      t = s[i]
      s[i] = s[l-i]
      s[l-i]= t
    end
    s
  end

  def self.reverse_char_of_word(s)
    start_word_pos = -1
    while true
      end_word_pos = s.index(' ', start_word_pos+ 1)
      if end_word_pos.nil?
        end_word_pos = s.length
      end
      if end_word_pos == start_word_pos
        break
      end
      ((end_word_pos - start_word_pos)/2).times do |i|
        t = s[start_word_pos + i + 1]
        s[start_word_pos + i + 1] = s[end_word_pos - 1 - i]
        s[end_word_pos - 1 - i] = t
      end
      start_word_pos = end_word_pos
    end
    s

  end
end

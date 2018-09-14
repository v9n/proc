require 'pp'

def convert(s, num_rows)
  # Given a square
  # 0   4
  # 1 3 5
  # 2   6
  # char_per_square = num_rows * 2 + (num_rows - 2)
  # with k square we can hold
  # k * char_per_square - (k - 1) * num_rows
  # -> k * (num_rows * 2 + (num_rows - 2)) - (k -1) * num_rows
  # -> k * num_rows * 2 + k * num_rows - k * 2 - k * num_rows + num_rows
  # -> k * num_rows * 2 - k * 2 + num_rows
  # -> k * (num_rows * 2 - 2) + num_rows
  amount_of_square = (s.length - num_rows).to_f / (num_rows * 2 - 2)
  amount_of_square = amount_of_square.ceil

  matrix = Array.new(num_rows, Array.new(amount_of_square))

  s = s.split ''
  num_rows.times do |y|
    amount_of_square.times do |x|
      matrix[x][y] = s.shift
    end
  end

  pp matrix
end

convert("PAPALISHIRING", 3)


Given f(amount, array)

f(amount, array) =
  1. array.length = 1
    | amount/array.first if sizeof(array)=0 and amount div array.first = 0
    | nil if sizeof(array)=0 and amount div array.first > 0
  2. array.length = 2

    result = []
    1..(ceil(amount/array/first)).loop
      result << value
      


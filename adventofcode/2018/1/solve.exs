File.stream!("input")
|> Stream.map(&String.strip/1)
|> Stream.reduce(fn ({line, index}) -> IO.puts "#{index + 1} #{line}" end)
|> Stream.run


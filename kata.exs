defmodule Kata do
  def build(map) do
    map =
    Enum.map(1..26, fn (n) ->
      Map.put(map, n, n)
    end)
  end

  def hello() do
    IO.puts "Hola mundo"
  end
end
#IO.puts "Hola mundo "
#column = "abcdefghijklmnopqrstuvwxyz"
#inter = 1
#start = 1
#map = %{}



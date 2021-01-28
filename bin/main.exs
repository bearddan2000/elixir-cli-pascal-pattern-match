#Elixir 1.10.2
defmodule Pascal do

def row(a, b, _c, result) when a > b do result end

def row(a, b, c, result) do
  r = [trunc(c)|result]
  d = b-a
  e = a+1
  f = c * (d / e)
  row(e, b, f, r)
  end

def col(0, b) do
  result = row(0, 0, 1, [])
  IO.inspect result
  col(1, b)
  end

def col(a, b) when a > b do 0 end

def col(a, b) do
  result = row(0, a, 1, [])
  IO.inspect result
  col(a+1, b)
  end

def start() do
  i = 10
  IO.puts("[INPUT] #{i}")
  IO.puts("[OUTPUT]")
  col(0, i)
  end

  end
  

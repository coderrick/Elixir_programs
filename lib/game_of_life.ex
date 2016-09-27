defmodule GameOfLife do

  def printboard(b) do
    Enum.each(b, fn(x) -> 
      Enum.each(x, fn(y) -> 
        IO.write y
      end)
      IO.puts ""
    end)
  end

  def nextboard(b) do
    Enum.map(b, fn(row) -> 
      Enum.map(row, fn(cell) -> 
        cell 
      end)
    end)
  end
end

startboard=[[0,0,0],
            [0,1,0],   
            [0,0,0]]
            
GameOfLife.printboard(startboard)
IO.puts ""
GameOfLife.printboard(GameOfLife.nextboard(startboard))
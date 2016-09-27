defmodule GolTest do

  use ExUnit.Case

  doctest Gol



  test "Live cell with less than 2 neighbors dies" do

    assert Gol.cell_state(0, [0,0,0,0,0,0,0,0]) == false

  end



   test "Live cell with 2 or 3 neighbors lives" do

    assert Gol.cell_state(1, [1,1,0,1,0,0,0,0]) == true

  end



   test "Live cell with more than 3 neighbors dies" do

    assert Gol.cell_state(1, [1,1,1,1,1,0,0,0]) == false

  end



   test "Dead cell with exactly 3 neighbors becomes living" do

    assert Gol.cell_state(0, [0,1,0,1,0,1,0,0]) == true

  end

end
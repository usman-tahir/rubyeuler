# http://codekata.com/kata/kata11-sorting-it-out/

class SortingBalls

  def initialize
    @picked =[]
  end

  def pick(*n_to_exclude)
    picked = n_to_exclude.flatten
    val = rand(0..59)
    until !picked.include?(val)
      val = rand(0..59)
    end
    val
  end

  def draw(*drawn)
    pick(*drawn.flatten)
  end

  def show(number_to_draw=5, iteration=0)
    if iteration == number_to_draw
      @picked.sort!.inspect
    else
      @picked << draw(@picked)
      puts @picked.sort!.inspect
      show(number_to_draw, iteration+1)
    end
  end

end

puts SortingBalls.new.show(10)




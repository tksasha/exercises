#
# Task 1: implement code to sum two digits
#
class Calculator
  def initialize x, y
    @x = x

    @y = y
  end

  def sum
    @sum ||= @x + @y
  end

  class << self
    def sum *args
      new(*args).sum
    end
  end
end

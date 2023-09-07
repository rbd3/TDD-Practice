class Solver

  def factorial(number)
    if number < 0
      raise ArgumentError.new("Number must be greater than or equal to 0")
    end

    if number == 0
      1
    else
      (1..number).reduce(:*)
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    if number % 15 == 0
      'fizzbuzz'
    elsif number % 3 == 0
      'fizz'
    elsif number % 5 == 0
      'buzz'
    else
      number.to_s
    end
  end
end
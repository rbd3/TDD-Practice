class Solver
  def factorial(number)
    raise ArgumentError, 'Number must be greater than or equal to 0' if number.negative?

    if number.zero?
      1
    else
      (1..number).reduce(:*)
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end

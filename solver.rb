class Solver
  def factorial(num)
    raise 'Provided number is less than 0' if num.negative?
    return 1 if num.zero?

    fact = 1
    (1..num).each do |i|
      fact *= i
    end
    fact
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

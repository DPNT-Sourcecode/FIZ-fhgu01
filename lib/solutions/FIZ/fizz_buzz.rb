# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    return 'fizz buzz' if (number % 15).zero?
    return 'fizz' if is_fizz(number)
    return 'buzz' if is_buzz(number)
    number.to_s
  end

  def is_fizz(number)
    return ((number % 3).zero? || number.to_s.split('').include?('3'))
  end

  def is_buzz(number)
    return ((number % 5).zero? || number.to_s.split('').include?('5'))
  end

end




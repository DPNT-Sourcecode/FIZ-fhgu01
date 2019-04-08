# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    return 'fizz buzz' if (is_fizz(number) == true) && (is_buzz(number) == true)
    return ('fizz' + add_deluxe(number)) if is_fizz(number)
    return 'buzz' if is_buzz(number)
    number.to_s
  end

  def is_fizz(number)
    return ((number % 3).zero? || number.to_s.split('').include?('3'))
  end

  def is_buzz(number)
    return ((number % 5).zero? || number.to_s.split('').include?('5'))
  end

  def add_deluxe(number)
    return ' deluxe' if (number > 10) && (number.to_s.split('').uniq.count <= 1)
  end

end


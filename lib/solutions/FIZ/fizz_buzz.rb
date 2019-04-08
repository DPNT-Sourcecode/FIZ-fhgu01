# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    return ('fizz buzz' + add_deluxe(number)) if (is_fizz(number) && is_buzz(number))
    return ('fizz' + add_deluxe(number)) if is_fizz(number)
    return ('buzz' + add_deluxe(number)) if is_buzz(number)
    number.to_s
  end

  def is_fizz(number)
    return ((number % 3).zero? || number_to_array(number).include?('3'))
  end

  def is_buzz(number)
    return ((number % 5).zero? || number_to_array(number).include?('5'))
  end

  def add_deluxe(number)
    return ' deluxe' if (number > 10) && (number_to_array(number).uniq.count <= 1)
    ''
  end

  def number_to_array(number)
    array = number.to_s.split('')
    return array
  end

end






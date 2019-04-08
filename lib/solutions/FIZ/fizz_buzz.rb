# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    return ('fizz buzz' + add_deluxe(number)) if (is_fizz(number) && is_buzz(number))
    return ('fizz' + add_deluxe(number)) if is_fizz(number)
    return ('buzz' + add_deluxe(number)) if is_buzz(number)
    return ('fake' + add_deluxe(number)) if is_fake(number) && is_deluxe(number)
    is_deluxe(number) ? 'deluxe' : number.to_s
  end

  def is_fizz(number)
    return ((number % 3).zero? || number_to_array(number).include?('3'))
  end

  def is_buzz(number)
    return ((number % 5).zero? || number_to_array(number).include?('5'))
  end

  def add_deluxe(number)
    return ' deluxe' if is_deluxe(number)
    ''
  end

  def is_deluxe(number)
    (number > 10) && (number_to_array(number).uniq.count <= 1)
  end

  def number_to_array(number)
    return number.to_s.split('')
  end

  def is_fake(number)
    (number % 2) > 0
  end

end


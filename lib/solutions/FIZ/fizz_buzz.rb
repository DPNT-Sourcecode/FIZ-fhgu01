# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    return ('fizz buzz' + add_deluxe(number)) if (is_fizz(number) && is_buzz(number))
    return ('fizz' + add_deluxe(number)) if is_fizz(number)
    return ('buzz' + add_deluxe(number)) if is_buzz(number)
    test_deluxe(number) ? add_fake(number) + 'deluxe' : number.to_s
  end

  def is_fizz(number)
    return ((number % 3).zero? || number_to_array(number).include?('3'))
  end

  def is_buzz(number)
    return ((number % 5).zero? || number_to_array(number).include?('5'))
  end

  def add_deluxe(number)
    return ' deluxe' if test_deluxe(number)
    ''
  end

  def test_deluxe(number)
    (number > 10) && (number_to_array(number).uniq.count <= 1)
  end

  def number_to_array(number)
    return number.to_s.split('')
  end

  def add_fake(number)
    return 'fake ' if (number % 2) > 0
    ''
  end

end



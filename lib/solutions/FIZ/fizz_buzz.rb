# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    string_array = []
    string_array << 'fizz' if is_fizz(number)
    string_array << 'buzz' if is_buzz(number)
    string_array << 'fake' if is_fake(number)
    string_array << 'deluxe' if is_deluxe(number)
    string_array << number.to_s if string_array.empty?
    return string_array.join(' ')
  end

  def is_fizz(number)
    return ((number % 3).zero? || includes_3(number))
  end

  def is_buzz(number)
    return ((number % 5).zero? || includes_5(number))
  end

  def is_deluxe(number)
    ((number % 3).zero? && includes_3(number)) || ((number % 5).zero? && includes_5(number))
  end

  def number_to_array(number)
    return number.to_s.split('')
  end

  def includes_3(number)
    number_to_array(number).include?('3')
  end

  def includes_5(number)
    number_to_array(number).include?('5')
  end

  def is_fake(number)
    (number % 2) > 0 && is_deluxe(number)
  end

end





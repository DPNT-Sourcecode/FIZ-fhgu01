# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    return 'fizz buzz' if (number % 15).zero?
    return 'fizz' if ((number % 3).zero? || number.to_s.split('').include?('3'))
    return 'buzz' if ((number % 5).zero? || number.to_s.split('').include?('5'))
    number.to_s
  end

end



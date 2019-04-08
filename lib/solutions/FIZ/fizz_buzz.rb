# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    case number
    when number % 15 == 0
      return "fizz buzz"
    when number % 3 == 0
      return "fizz"
    when number % 5 == 0
      return "buzz"
    else
      return number
    end

    # if number % 15 == 0
    #   "fizz buzz"
    # elsif number % 3 == 0
    #   "fizz"
    # elsif number % 5 == 0
    #   "buzz"
    # else
    #   number
    # end
  end

end




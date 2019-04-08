# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test
  def test_normal_number
    assert_equal 1, FizzBuzz.new.fizz_buzz(1)
  end

  def test_fizz_number
    assert_equal "fizz", FizzBuzz.new.fizz_buzz(3)
  end

  def test_buzz_number
    assert_equal "buzz", FizzBuzz.new.fizz_buzz(5)
  end

  def test_fizzbuzz_number
    assert_equal "fizz buzz", FizzBuzz.new.fizz_buzz(15)
  end
end




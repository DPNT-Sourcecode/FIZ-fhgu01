# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test
  def test_normal_number
    assert_equal '1', FizzBuzz.new.fizz_buzz(1)
    assert_equal '22', FizzBuzz.new.fizz_buzz(22)
    assert_equal '11', FizzBuzz.new.fizz_buzz(11)
    assert_equal '1111', FizzBuzz.new.fizz_buzz(1111)
    assert_equal '77', FizzBuzz.new.fizz_buzz(77)
    assert_equal '17', FizzBuzz.new.fizz_buzz(17)
  end

  def test_fizz_number
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(13)
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(34)
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(6)
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(66)
    assert_equal 'fizz', FizzBuzz.new.fizz_buzz(777)
  end

  def test_buzz_number
    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(52)
    assert_equal 'buzz', FizzBuzz.new.fizz_buzz(151)
  end

  def test_fizzbuzz_number
    assert_equal 'fizz buzz', FizzBuzz.new.fizz_buzz(60)
    assert_equal 'fizz buzz', FizzBuzz.new.fizz_buzz(53)
    assert_equal 'fizz buzz', FizzBuzz.new.fizz_buzz(353)
  end

  def test_fake_deluxe
    assert_equal 'fizz fake deluxe', FizzBuzz.new.fizz_buzz(33)
    assert_equal 'fizz fake deluxe', FizzBuzz.new.fizz_buzz(333)
    assert_equal 'buzz fake deluxe', FizzBuzz.new.fizz_buzz(55)
    assert_equal 'fizz buzz fake deluxe', FizzBuzz.new.fizz_buzz(555)
    assert_equal 'fizz buzz fake deluxe', FizzBuzz.new.fizz_buzz(15)
    assert_equal 'fizz fake deluxe', FizzBuzz.new.fizz_buzz(3)
    assert_equal 'buzz fake deluxe', FizzBuzz.new.fizz_buzz(5)
  end

  def test_deluxe
    assert_equal 'fizz deluxe', FizzBuzz.new.fizz_buzz(36)
    assert_equal 'buzz deluxe', FizzBuzz.new.fizz_buzz(50)
    assert_equal 'fizz buzz deluxe', FizzBuzz.new.fizz_buzz(30)
  end
end

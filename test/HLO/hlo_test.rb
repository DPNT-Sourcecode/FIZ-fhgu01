# noinspection RubyResolve,RubyResolve
require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'HLO'

class ClientTest < Minitest::Test

  def test_hello_world
    assert_equal "Hello, World!", Hello.new.hello("World"), 'App should say hello to the world'
  end

  def test_hello_john
    assert_equal "Hello, John!", Hello.new.hello("John"), 'App should say hello to John'
  end

end

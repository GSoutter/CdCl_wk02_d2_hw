require("minitest/autorun")
require('minitest/reporters')
require_relative('../river')
require_relative('../bear')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class CustomerTest < MiniTest::Test

  def setup()
    @river = River.new("Tweed", ['garrry', "jerry", 'jock', 'jeremiah'])
    @bear1 = Bear.new("Dave")


  end

  def test_bear_get_name
    assert_equal("Dave", @bear1.name)
  end

  def test_bear_get_fish_size
    assert_equal(0, @bear1.stomach_size)
  end

  def test_eat_fish
    @bear1.eat_fish(@river)
    assert_equal(1, @bear1.stomach_size)
    assert_equal(3, @river.fishes_count)
  end

  def test_bear_roar
    @bear1
    assert_equal("Rar..", @bear1.roar)
  end





end

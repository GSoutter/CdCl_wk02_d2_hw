require("minitest/autorun")
require('minitest/reporters')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class CustomerTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("garrry")
    @fish2 = Fish.new("jerry")
    @fish3 = Fish.new("jock")
    @fish4 = Fish.new("jeremiah")

    @river = River.new("Tweed", [@fish1, @fish2, @fish3, @fish4])



  end

  def test_river_get_name
    assert_equal("Tweed", @river.name())
  end

  def test_river_fish_count
    assert_equal(4, @river.fishes_count())
  end

  def test_river_decrease_fish
    @river.fish_decrease
    assert_equal(3, @river.fishes_count())
  end




end

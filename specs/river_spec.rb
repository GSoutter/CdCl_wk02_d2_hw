require("minitest/autorun")
require('minitest/reporters')
require_relative('../river')
require_relative('../bear')


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new


class CustomerTest < MiniTest::Test

  def setup()
    @river = River.new("Tweed", ['garrry', "jerry", 'jock', 'jeremiah'])



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

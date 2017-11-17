require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Robocop", "beginer", "Jimmy, Jane, John")
  end

  def test_to_hash
    expected = @team.to_hash
    result = {team_name: "Robocop", level: "beginer", points: 0}
    assert_equal(expected, result)
  end

  def test_to_hash_is_a_hash
    expected = @team.to_hash.class
    result = Hash
    assert_equal(expected, result)
  end

end

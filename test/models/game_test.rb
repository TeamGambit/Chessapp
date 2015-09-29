require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test "board is populated with 32 peices when started" do
    g = Game.create
    assert_equal 32, g.pieces.count    
  end
end



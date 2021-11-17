# frozen_string_literal: true

require_relative 'line'
require 'minitest/autorun'
# Class for testing class ThickLine
class TestFunc < MiniTest::Test
  attr_accessor :line

  def setup
    @line = ThickLine.new(2.5, 7.5, -6, -18, 5)
  end

  def test_part
    assert_equal line.x1, 2.5
    assert_equal line.y1, 7.5
    assert_equal line.x2, -6
    assert_equal line.y2, -18
    assert_equal line.thickness, 5
    assert_equal line.pass_through(3, 9.1), true
    assert_equal line.pass_through(3, 18), false
    assert_kind_of ThickLine, line
    assert_kind_of Line, line
  end
end

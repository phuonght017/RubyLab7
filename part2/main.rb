# frozen_string_literal: true

require_relative 'line'
line_test = Line.new(1.5, 3.0, 2.0, 4)
puts "First point: #{line_test.x1}, #{line_test.y1}"
puts "Second point: #{line_test.x2}, #{line_test.y2}"
puts "This line pass through (5,11)? #{line_test.pass_through(5, 11)}"
puts "This line pass through (5,10)? #{line_test.pass_through(5, 10)}"

line_test = ThickLine.new(1.5, 3.0, 2.0, 4, 2)
puts "First point: #{line_test.x1}, #{line_test.y1}"
puts "Second point: #{line_test.x2}, #{line_test.y2}"
puts "Thickness: #{line_test.thickness}"
puts "This line pass through (5,11)? #{line_test.pass_through(5, 11)}"
puts "This line pass through (5,10)? #{line_test.pass_through(5, 10)}"
puts "This line pass through (5,13)? #{line_test.pass_through(5, 13)}"

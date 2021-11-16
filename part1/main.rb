# frozen_string_literal: true

require_relative 'reverse'
puts 'Enter the number of strings:'
num_str = gets.chomp.to_i
input_file = File.open('F.txt', 'w')
puts 'Enter strings:'
(0...num_str).each do
  str = gets.chomp
  input_file.puts str
end
input_file.close
puts 'Strings were written in file F.txt!'
TextFile.reverse('F.txt')
puts 'Reversed strings written in file G.txt: '
reversed_strings = File.readlines 'G.txt'
puts reversed_strings

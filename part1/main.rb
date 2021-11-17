# frozen_string_literal: true

require_relative 'textfile'
puts 'Enter the number of strings:'
num_str = gets.chomp.to_i
puts 'Enter strings:'
arr_str = Array.new(num_str)
(0...num_str).each { |index| arr_str[index] = gets.chomp }

TextFile.print_to_files(arr_str, 'F.txt', 'G.txt')

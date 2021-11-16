# frozen_string_literal: true

# Class for reversing strings in text file
class TextFile
  class << self
    def reverse(file_f)
      new(file_f).send :reverse
    end
  end

  private

  attr_accessor :file_f

  def initialize(file_f)
    @file_f = file_f
  end

  def reversed_data
    array = File.readlines file_f
    array.each_index do |index|
      array[index] = array[index].reverse
    end
    array
  end

  def reverse
    data_g = reversed_data.reverse
    file_g = File.open('G.txt', 'w')
    file_g.puts data_g
    file_g.close
  end
end

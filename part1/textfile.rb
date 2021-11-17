# frozen_string_literal: true

# Class for reversing strings in text file
class TextFile
  class << self
    def print_to_files(arr_str, file_f, file_g)
      new(arr_str, file_f, file_g).send :print_to_files
    end
  end

  private

  attr_accessor :arr_str, :file_f, :file_g

  def initialize(arr_str, file_f, file_g)
    @arr_str = arr_str
    @file_f = file_f
    @file_g = file_g
  end

  def print_to_files
    File.open(file_f, 'w+') do |file|
      data = arr_str.join '\n'
      file.puts data
    end
    File.open(file_g, 'w+') do |file|
      data = arr_str.map(&:reverse).reverse.join '\n'
      file.puts data
    end
  end
end

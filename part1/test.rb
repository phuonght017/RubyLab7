# frozen_string_literal: true

require_relative 'textfile'
require 'minitest/autorun'
# Class for testing class TextFile
class TestFunc < MiniTest::Test
  def rand_string
    charset = Array('A'..'Z') + [' '] + Array('a'..'z')
    len = rand(20)
    Array.new(len) { charset.sample }.join
  end

  def rand_arr_string
    len = rand(100)
    arr_string = []
    len.times { arr_string << rand_string }
    arr_string
  end

  attr_reader :arr_str, :file_f, :file_g, :file_check

  def setup
    @arr_str = rand_arr_string
    @file_f = rand_string
    @file_g = rand_string
    @file_check = rand_string
    FileUtils.touch file_f
    FileUtils.touch file_g
    FileUtils.touch file_check
    TextFile.print_to_files(arr_str, file_f, file_check)
  end

  def test_part
    TextFile.print_to_files(arr_str, file_f, file_g)
    assert_equal File.open(file_g).read, File.open(file_check).read
  end

  def teardown
    File.delete(file_f)
    File.delete(file_g)
    File.delete(file_check)
  end
end

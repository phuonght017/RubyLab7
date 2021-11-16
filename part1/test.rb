# frozen_string_literal: true

require_relative 'reverse'
require 'minitest/autorun'
# Class for testing class TextFile
class TestFunc < MiniTest::Test
  def create_filef
    file_inp = File.open('F.txt', 'w')
    file_inp.puts "asda ki\ns df\nqwe\nrewq"
    file_inp.close
    'F.txt'
  end

  def create_filecheck
    file_out = File.open('check.txt', 'w')
    file_out.puts "\nqwer\n\newq\n\nfd s\n\nik adsa"
    file_out.close
    'check.txt'
  end

  attr_reader :file_f, :file_check

  def setup
    @file_f = create_filef
    @file_check = create_filecheck
  end

  def test_part
    TextFile.reverse(file_f)
    assert_equal File.open('G.txt').read, File.open(file_check).read
  end
end

gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

require_relative 'bubble_sort'

class BubbleSortTest < MiniTest::Test

  def test_empty_array
    assert_equal [], sort([])
  end

  def test_single_number
    assert_equal [5], sort([5])
  end

  # def test_two_numbers_in_order
  #   sequence = [4, 3, 5, 0, 1]
  #   assert_equal ([0, 1, 3, 4, 5]), sort(sequence)
  # end

end

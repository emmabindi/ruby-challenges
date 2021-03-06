require 'test/unit'
require_relative '../09_vowels'

class LargestNumberTest < Test::Unit::TestCase
  def test_vowels
    assert_equal(["e","u","i","o","o"], vowels("The quick brown fox"))
    assert_equal(["e","o","o"], vowels("Hello World"))
  end
  def test_vowels_casing
    assert_equal(["A","e","E"], vowels("cAse tEst"))
  end
end

class LargestNumberTest < Test::Unit::TestCase
  def test_vowels
    assert_equal(["e","u","i","o","o"], vowels2("The quick brown fox"))
    assert_equal(["e","o","o"], vowels2("Hello World"))
  end
  def test_vowels_casing
    assert_equal(["A","e","E"], vowels2("cAse tEst"))
  end
end


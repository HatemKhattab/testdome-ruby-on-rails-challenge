require "minitest/autorun"
require_relative "palindrome.rb"
class PalindromeTest < Minitest::Test
  def test_lowercase
    assert_equal true, Palindrome.is_palindrome('deleveled')
  end

  def test_uppercase
    assert_equal true, Palindrome.is_palindrome('DELEVELED')
  end

  def test_case
    assert_equal true, Palindrome.is_palindrome('PalesElAp')
  end

  def test_not_palindrome
    assert_equal false, Palindrome.is_palindrome('Malmö')
  end

end
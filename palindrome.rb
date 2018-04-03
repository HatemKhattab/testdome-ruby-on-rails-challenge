module Palindrome
  def self.is_palindrome(word)
    word.downcase == word.downcase.reverse
  end
end

puts Palindrome.is_palindrome('PalesElAp')

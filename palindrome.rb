module Palindrome
  def self.is_palindrome(word)
    string = word.downcase
    string_length = word.length
    array_1 = []
    array_2 = []

    for i in 0..string_length-1 do
      array_1 << string[i]
    end

    (string_length-1).downto(0) do |i|
      array_2 << string[i]
    end
    array_1 == array_2
  end
end

puts Palindrome.is_palindrome('PalesElAp')

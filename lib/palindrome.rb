=begin

#Able to check if a string is a palindrome using the .reverse() method.

class String
  define_method(:palindrome) do
    original_word = self
    reversed_original_word = original_word.reverse()
    if original_word.eql?(reversed_original_word)
      "This is a palindrome"
    else
      "This is not a palindrome"
    end
  end
end
=end


# Able to check to see if a string is a palindrome without using the reverse method.
# Able to compare even with uppercase letters, symbols or spaces


class String
  define_method(:palindrome) do
    original_string = self.gsub(/\s+/, "").downcase()
    pal_array = []
    reversed_original_string = original_string.split("")

    looptimes = reversed_original_string.length()
    looptimes.times() do
      x = reversed_original_string.pop()
      pal_array.push(x)
    end

    answer = pal_array.join()

    if answer.eql?(original_string)
      "This is a palindrome"
    else
      "This is not a palindrome"
    end
  end
end

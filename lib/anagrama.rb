class ANAGRAM
    
  # attr_reader(:)
  # attr_writer(:)
  # attr_accessor(:)

  # def initialize()
  # end

  def anagram(word1, word2)
    sorted_letters1 = word1.downcase.split("").sort
    sorted_letters2 = word2.downcase.split("").sort
    letters_compare = sorted_letters1 & sorted_letters2

    # puts `clear`
    puts ""
    puts "LOG word1: '#{word1}' / LOG sorted_letters1: #{sorted_letters1}"
    puts "LOG word2: '#{word2}' / LOG sorted_letters2: #{sorted_letters2}"

    puts "LOG sorted_letters1 length: #{sorted_letters1.length} sorted_letters2 length: #{sorted_letters2.length}"
    puts "LOG letters_compare: #{letters_compare} letters_compare length: #{letters_compare.length}"

    if (word1.match(/[aeiouy]/i) && word2.match(/[aeiouy]/i))
      if (sorted_letters1 == sorted_letters2)
        answer = "These words are anagrams."
      elsif letters_compare.length == 0
        answer = "These words have no letter matches and are antigrams."
      elsif letters_compare.length >= 1
        answer = "These words are boring."
      else
        answer = "Noah has a problem with his code..."
      end
    else
      answer = "You need to input actual words!"
    end
    

    puts answer
    answer

  end
end
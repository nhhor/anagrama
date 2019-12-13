class ANAGRAM
    
  attr_reader(:primary_word)
  # attr_writer(:)
  attr_accessor(:anagram_word_array, :antigram_word_array, :boring_word_array, :error_array)

  def initialize(primary_word)
    @primary_word = primary_word
    @anagram_word_array = []
    @antigram_word_array = []
    @boring_word_array = []
    @error_array = []
  end


  def anagram(word2)
    sorted_letters1 = primary_word.downcase.split("").sort
    sorted_letters2 = word2.downcase.split("").sort
    letters_compare = sorted_letters1 & sorted_letters2
    word2_array = word2.gsub(/[^a-z~]/i, "").split("~")

    puts ""
    puts "LOG word2_array: '#{word2_array}'"
    puts "LOG primary_word: '#{primary_word}' / LOG sorted_letters1: #{sorted_letters1}"
    puts "LOG word2: '#{word2}' / LOG sorted_letters2: #{sorted_letters2}"
    puts "LOG sorted_letters1 length: #{sorted_letters1.length} sorted_letters2 length: #{sorted_letters2.length}"
    puts "LOG letters_compare: #{letters_compare} letters_compare length: #{letters_compare.length}"

    word2_array.each do |word_to_compare|
      sorted_letters1 = primary_word.downcase.split("").sort
      sorted_letters2 = word_to_compare.downcase.split("").sort
      letters_compare = sorted_letters1 & sorted_letters2

      if (primary_word.match(/[aeiouy]/i) && word_to_compare.match(/[aeiouy]/i))
        if (sorted_letters1 == sorted_letters2)
          anagram_word_array.push(word_to_compare)
          answer = ""
        elsif letters_compare.length == 0
          antigram_word_array.push(word_to_compare)
          answer = ""
        elsif letters_compare.length >= 1
          boring_word_array.push(word_to_compare)
          answer = ""
        else
          error_array.push("NOAH HAS A PROBLEM WITH HIS CODE...")
        end
      else
        error_array.push("You need to input actual words!")
      end
    end

    puts "LOG primary_word: '#{primary_word}'"
    puts "LOG anagram_word_array: '#{anagram_word_array}'"
    puts "LOG antigram_word_array: '#{antigram_word_array}'"
    puts "LOG boring_word_array: '#{boring_word_array}'"
    puts "LOG error_array: '#{error_array}'"

    if error_array.length > 0
      answer = error_array.join(" ")
    else
      answer = "From your primary word #{primary_word.upcase}: "
    end

    anagram_word_array.each { |anagram| answer += "and #{anagram.upcase} is an anagram, "}

    antigram_word_array.each { |antigram| answer += "and #{antigram.upcase} is an antigram, "}

    boring_word_array.each { |boring| answer += "and #{boring.upcase} is boring, "}

    # if (primary_word.match(/[aeiouy]/i) && word2.match(/[aeiouy]/i))
    #   if (sorted_letters1 == sorted_letters2)
    #     answer = "These words are anagrams."
    #   elsif letters_compare.length == 0
    #     answer = "These words have no letter matches and are antigrams."
    #   elsif letters_compare.length >= 1
    #     answer = "These words are boring."
    #   else
    #     answer = "Noah has a problem with his code..."
    #   end
    # else
    #   answer = "You need to input actual words!"
    # end
    

    puts answer
    answer.gsub(/,\W$/, ".").gsub(/$(and )/i, "")

  end
end
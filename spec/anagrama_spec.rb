require('rspec')
require('anagrama.rb')

describe('ANAGRAM#checker') do

  it("1) returns 'These words are anagrams.' when anagram words are entered.") do
    test = ANAGRAM.new("not")
    expect(test.anagram("ton")).to(eq("These words are anagrams."))
  end

  it("2) returns 'These words are anagrams.' when anagram words are entered regardless of letter-case.") do
    test = ANAGRAM.new("Tea")
    expect(test.anagram("Eat")).to(eq("These words are anagrams."))
  end

  it("3) returns 'You need to input actual words!' when either word entered does not contain at least one vowel.") do
    test = ANAGRAM.new("Ruby")
    expect(test.anagram("hbnR")).to(eq("You need to input actual words!"))
  end

  it("4) returns 'These words have no letter matches and are antigrams.' when either word entered does not contain at least one similar letter.") do
    test = ANAGRAM.new("hi")
    expect(test.anagram("bye")).to(eq("These words have no letter matches and are antigrams."))
  end

  it("5) returns 'These words are boring.' when either word entered contains at least one similar letter.") do
    test = ANAGRAM.new("hey")
    expect(test.anagram("hello")).to(eq("These words are boring."))
  end

  it("6) returns the anagram/antigram/status of each word entered as an argument compared to the primary word.") do
    test = ANAGRAM.new("parse")
    expect(test.anagram("pe'ars~munch~spaz s")).to(eq("From your primary word of parse: pears is an anagram, munch is an antigram, and spazs is boring."))
  end


end
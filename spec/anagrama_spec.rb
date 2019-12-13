require('rspec')
require('anagrama.rb')

describe('ANAGRAM#checker') do

  it("1) returns 'These words are anagrams.' when anagram words are entered.") do
    test = ANAGRAM.new()
    expect(test.anagram("not", "ton")).to(eq("These words are anagrams."))
  end

  it("2) returns 'These words are anagrams.' when anagram words are entered regardless of letter-case.") do
    test = ANAGRAM.new()
    expect(test.anagram("Tea", "Eat")).to(eq("These words are anagrams."))
  end

  it("3) returns 'You need to input actual words!' when either word entered does not contain at least one vowel.") do
    test = ANAGRAM.new()
    expect(test.anagram("Ruby", "hbnR")).to(eq("You need to input actual words!"))
  end

  it("4) returns 'These words have no letter matches and are antigrams.' when either word entered does not contain at least one similar letter.") do
    test = ANAGRAM.new()
    expect(test.anagram("hi", "bye")).to(eq("These words have no letter matches and are antigrams."))
  end

  it("5) returns 'These words are boring.' when either word entered contains at least one similar letter.") do
    test = ANAGRAM.new()
    expect(test.anagram("hey", "hello")).to(eq("These words are boring."))
  end


end
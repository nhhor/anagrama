require('rspec')
require('anagrama.rb')

describe('ANAGRAM#checker') do

  it("1) returns 'These words are anagrams.' when anagram words are entered.") do
    test = ANAGRAM.new("not")
    expect(test.anagram("ton")).to(eq("From your primary word NOT: TON is an anagram."))
  end

  it("2) returns 'These words are anagrams.' when anagram words are entered regardless of letter-case.") do
    test = ANAGRAM.new("Tea")
    expect(test.anagram("Eat")).to(eq("From your primary word TEA: EAT is an anagram."))
  end

  it("3) returns 'You need to input actual words!' when either word entered does not contain at least one vowel.") do
    test = ANAGRAM.new("Ruby")
    expect(test.anagram("hbnR")).to(eq("You need to input actual words!"))
  end

  it("4) returns 'These words have no letter matches and are antigrams.' when either word entered does not contain at least one similar letter.") do
    test = ANAGRAM.new("hi")
    expect(test.anagram("bye")).to(eq("From your primary word HI: BYE is an antigram."))
  end

  it("5) returns 'These words are boring.' when either word entered contains at least one similar letter.") do
    test = ANAGRAM.new("hey")
    expect(test.anagram("hello")).to(eq("From your primary word HEY: HELLO is boring."))
  end

  it("6) returns the anagram/antigram/status of each word entered as an argument compared to the primary word.") do
    test = ANAGRAM.new("parse")
    expect(test.anagram("pe'ars~mu@nch~spaz s~spear")).to(eq("From your primary word PARSE: PEARS is an anagram, and SPEAR is an anagram, and MUNCH is an antigram, and SPAZS is boring."))
  end

  it("7) returns the anagram/antigram/status of EACH word entered as an argument compared to the primary word.") do
    test = ANAGRAM.new("parse")
    expect(test.anagram("pe'ars~mu@nch~spaz s~spear~spr~spd")).to(eq("You need to input actual words!"))
  end


end
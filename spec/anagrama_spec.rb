require('rspec')
require('anagrama.rb')

describe('ANAGRAM#checker') do

  it("returns 'These words are anagrams.' when anagram words are entered.") do
    test = ANAGRAM.new()
    expect(test.anagram("not", "ton")).to(eq("These words are anagrams."))
  end

end
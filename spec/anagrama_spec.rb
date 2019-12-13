require('rspec')
require('anagrama.rb')

describe('ANAGRAM#checker') do

  it("returns XYZ") do
    test = ANAGRAM.new()
    expect(test.checker("a", "b")).to(eq("xyz"))
  end

end
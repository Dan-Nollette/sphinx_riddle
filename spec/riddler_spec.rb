require('riddler')
require('rspec')

describe('riddler#is_answer?')do
  it("returns false if incorrect riddle answers") do
    test_riddler = Riddler.new("doggy", "anagram", "wave-function")
    expect(test_riddler.is_answer?).to(eq(false))
  end
  it("returns true if correc riddle answers") do
    test_riddler = Riddler.new("human", "palindrome", "reflection")
    expect(test_riddler.is_answer?).to(eq(true))
  end
end

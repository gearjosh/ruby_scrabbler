require('rspec')
require('pry')
require('scrabbler')

describe('Word#scrabble') do
  it("returns a scrabble score for a single letter") do
    expect(Word.new('a').scrabble()).to(eq(1))
  end

  it("returns a scrabble score for a multi-letter word") do
    expect(Word.new('boo').scrabble()).to(eq(5))
  end
end
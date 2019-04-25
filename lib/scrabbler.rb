class Word

  def initialize(word)
    @word = word
  end

  def word
    @word
  end

  def scrabble
    legend = Hash.new()
    legend.store('a', 1)
    legend.store('e', 1)
    legend.store('i', 1)
    legend.store('o', 1)
    legend.store('u', 1)
    legend.store('l', 1)
    legend.store('n', 1)
    legend.store('t', 1)
    legend.store('s', 1)
    legend.store('r', 1)
    legend.store('d', 2)
    legend.store('g', 2)
    legend.store('b', 3)
    legend.store('c', 3)
    legend.store('m', 3)
    legend.store('p', 3)
    legend.store('f', 4)
    legend.store('h', 4)
    legend.store('v', 4)
    legend.store('w', 4)
    legend.store('y', 4)
    legend.store('k', 5)
    legend.store('j', 8)
    legend.store('x', 8)
    legend.store('q', 10)
    legend.store('z', 10)
    score = 0
    letters = @word.split('')
    letters.each do |letter|
      to_add = legend.fetch(letter)
      score += to_add
    end
    score
  end

end
class Element
  attr_reader :name, :symbol, :atomic_weight

  def initialize(name, symbol, atomic_weight)
    @name = name
    @symbol = symbol
    @atomic_weight = atomic_weight
  end

end


# Go through element symbols to check what symbols are contained within the input given, output array of possible symbols that may be included.

# take array of possible symbols getting an array of possibilities. Send to segment decipher.

# segment decipher checks for possible outcomes of individual 1 || 2 character segments of input word.

# array of all possible solutions

# check atomic_weight of each possible solution and return highest value element

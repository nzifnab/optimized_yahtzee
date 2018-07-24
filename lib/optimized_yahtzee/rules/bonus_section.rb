module OptimizedYahtzee
  class Rules::BonusSection
    attr_accessor :categories, :type, :threshold, :value

    DEFAULT_CATEGORIES = [0,1,2,3,4,5]
    DEFAULT_TYPE = :threshold
    DEFAULT_THRESHOLD = 63
    DEFAULT_VALUE = 35

    # Where `type` is either :threshold, or :binary
    # In :threshold, the sum of points in the categories must
    # reach a certain value before the bonus is acquired
    # (as in a standard game of Yahtzee with a 63 point threshold);
    # in :binary, *all* of the given categories must have a
    # non-zero value, and then the bonus is acquired (as in
    # the "Yahtzee Bingo" variant on the mobile game)
    #
    # `type` can also be :none to indicate there are no bonuses.
    # This will prevent the DEFAULT_ values from being applied,
    # and ignore any other given parameters
    def initialize(categories: DEFAULT_CATEGORIES, type: DEFAULT_TYPE, threshold: DEFAULT_THRESHOLD, value: DEFAULT_VALUE)
      if type != :none && categories
        self.categories = categories
        self.type = type
        self.threshold = (type == :threshold) ? threshold : nil
        self.value = value
      end
    end
  end
end

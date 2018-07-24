module OptimizedYahtzee
  class Rules::Scoring
    attr_accessor :categories

    DEFAULT_CATEGORIES = [
      :ones,
      :twos,
      :threes,
      :fours,
      :fives,
      :sixes,
      :three_of_a_kind,
      :four_of_a_kind,
      :full_house,
      :small_straight,
      :yahtzee,
      :chance
    ]
    # The index of score_rules matches that of each category
    # being scored. It can be just a symbol, like :ones, :twos, etc,
    # or it can be a hash of options in the format:
    # {
    #   rule: :ones,
    #   multiplier: 1
    # }
    # multiplier: 1 is the default. The score of the category is multiplied
    # by this multiplier. Used in some variations in the mobile yahtzee game.
    #
    # All of the default rules are defined:
    #
    # :ones
    # :twos
    # :threes
    # :fours
    # :fives
    # :sixes
    # :three_of_a_kind
    # :four_of_a_kind
    # :full_house
    # :small_straight
    # :large_straight
    # :yahtzee
    # :chance
    #
    # As well as a couple of additional rule types:
    # :evens (Sums up all even-sided dice)
    # :odds (Sums up all odd-sided dice)
    def initialize(score_rules = DEFAULT_CATEGORIES)
      self.categories = score_rules
    end
  end
end

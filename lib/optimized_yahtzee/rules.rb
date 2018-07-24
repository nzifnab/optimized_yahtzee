module OptimizedYahtzee
  class Rules
    def initialize

    end

    def bonus_sections
      @bonusees ||= [BonusSection.new]
    end

    def scoring
      @scoring ||= Scoring.new
    end
  end
end
require 'optimized_yahtzee/rules/bonus_section'
require 'optimized_yahtzee/rules/scoring'

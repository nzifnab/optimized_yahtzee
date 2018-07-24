require 'spec_helper'
require 'optimized_yahtzee/rules'

describe OptimizedYahtzee::Rules do
  context "Default Rules" do
    let(:rules){OptimizedYahtzee::Rules.new}

    describe "#bonus_sections" do
      it "Returns the upper section as a bonus with threshold 63 and value 35" do
        bonuses = rules.bonus_sections
        expect(bonuses.size).to eq(1)
        bonus = bonuses.first
        expect(bonus.categories).to eq((0..5).to_a)
        expect(bonus.type).to eq(:threshold)
        expect(bonus.threshold).to eq(63)
        expect(bonus.value).to eq(35)
      end
    end

    describe "#scoring" do

    end
  end
end

require "spec_helper"

RSpec.describe Hand do
  # Your tests here
  # '♦ = 2666', '♣ = 2663', '♠ = 2660', '♥ = 2665'
  let(:hand_1) { Hand.new(["10♦", "J♥"]) }
  let(:hand_2) { Hand.new(["A♣", "A♥"]) }
  let(:hand_3) { Hand.new(["7♠", "3♦"]) }
  let(:hand_4) { Hand.new(["7♠", "A♦"]) }

  describe "#hand_score" do
    # making the best possible score
    it "the score of a two cards to be accurate" do
      expect(hand_1.hand_score).to eq 20
      expect(hand_3.hand_score).to eq 10
      expect(hand_4.hand_score).to eq 18
    end

    it "calculates aces to be the best possible score" do
      expect(hand_2.hand_score).to eq 12
    end
  end

end

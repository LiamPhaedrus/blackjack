require "spec_helper"

RSpec.describe Card do
  #assign correct values to a card
  # '♦ = 2666', '♣ = 2663', '♠ = 2660', '♥ = 2665'
  let(:card_1) { Card.new("A♠")}
  let(:card_2) { Card.new("10♣")}
  let(:card_3) { Card.new("K♥")}
  let(:card_4) { Card.new("J♦")}
  let(:card_5) { Card.new("2♥")}

  describe "#card_value" do
    it "calculates aces to be 11" do
      expect(card_1.card_value).to eq 11
    end

    it "calculates face cards to be 10" do
      expect(card_3.card_value).to eq 10
      expect(card_4.card_value).to eq 10
    end

    it "calculates 10s to be 10" do
      expect(card_2.card_value).to eq 10
    end

    it "calculates single digit cards to be their digit" do
      expect(card_5.card_value).to eq 2
    end
  end
end

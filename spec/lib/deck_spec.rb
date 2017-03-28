require "spec_helper"

RSpec.describe Deck do
  # '♦ = 2666', '♣ = 2663', '♠ = 2660', '♥ = 2665'
  let(:deck) { Deck.new }

  describe "#build_deck" do

    it "builds a deck of 52 cards" do
      expect(deck.cards.size).to eq 52
    end

    it "creates unique cards" do
      expect(deck.cards.uniq.size).to eq 52
    end

    it "shuffles deck after being built" do
      expect(deck.cards.sort).to_not eq deck.cards

      expect(deck.cards.sort[0..1]).to eq ["10♠", "10♣"]
    end
  end

  describe "#deal" do
    it "removes correct number of cards" do
      start_size = deck.cards.size
      finish_size = start_size - 1
      person = "Player 1"
      deck.deal(person)

      expect(deck.cards.size).to eq finish_size
    end

    it "outputs the player's name and the card dealt" do

    end

    it "deals the top card in the deck" do
      correct_card = deck.cards[-1]
      expect(deck.deal(1)).to eq [correct_card]
    end
  end
end

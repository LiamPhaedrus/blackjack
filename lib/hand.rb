class Hand

  attr_accessor :cards, :score

  def initialize(cards)
    @cards = cards
  end

  def hand_score
    total = 0
    @cards.each do |card|
      new_card = Card.new(card)
      total += new_card.card_value
    end
    total
  end

  @cards.each do |card|
    if card.include?("A")


end

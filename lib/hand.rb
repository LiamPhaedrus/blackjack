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

    if total > 21
      count_aces.times do
        total -= 10
        if total < 21
          break
        end
      end
    end

    # if total > 21
    #   total += deal_with_aces
    # end
    @score = total

  end

  def count_aces
    # @cards.each do |card|
    #   if card.include?("A")
    2
  end

end

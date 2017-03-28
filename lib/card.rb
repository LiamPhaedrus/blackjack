class Card
  attr_accessor :card

  def initialize(card)
    @card = card
  end

  def card_value
    card_num = @card[0..-2]
    value = 0
    if card_num == "A"
      value = 11
    elsif card_num.to_i == 0
      value = 10
    else
      value = card_num.to_i
    end
    value
  end
end

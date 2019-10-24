class PlayingCard
  SUITS = %w{clubs diamonds hearts spades}
  RANKS = %w{2 3 4 5 6 7 8 9 10 J Q K A}

  class Deck

    def initialize(n=1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(n) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

deck = PlayingCard::Deck.new

puts deck.inspect

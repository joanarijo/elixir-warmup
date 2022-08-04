defmodule Cards do
  def create_deck do
    values = ["Ace", "Two", "Three", "Four", "Five"]
    suits = ["Spades", "Clubs", "Hearts", "Diamonds"]

    for suit <- suits, value <- values do
      "#{value} of #{suit}"
    end
    # for loop / returns one 'array'
    # nested loops / returns mutiples 'arrays' inside one 'array'
    # for loop with multiple comprehensions / returns one 'array' with all combinations
  end
  # assign a create_deck to the var deck (always creates a copy of the data):
  # deck = Cards.create_deck

  def shuffle(deck) do
    Enum.shuffle(deck)
  end
  # shuffle the deck: 
  # Cards.shuffle(deck)

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end
  # find if list 'deck' contains element: 
  # Cards.contains?(deck, "Two")
  # returns true
  # Cards.contains?(deck, "Random")
  # returns false

  def deal(deck, hand_size) do
    Enum.split(deck, hand_size)
  end
  # creates hand with size number: 
  # Cards.deal(deck, 5) 
  # returns tuple with hand and the rest of the deck

end

# Enum module - https://hexdocs.pm/elixir/Enum.html
# List module - https://hexdocs.pm/elixir/List.html
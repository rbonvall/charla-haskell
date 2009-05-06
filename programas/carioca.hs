data Suit = Spade | Heart | Club | Diamond deriving Eq
data Mono = J | Q | K deriving Eq
data Value = N Integer | M Mono | Ace deriving Eq
data Card = Card Value Suit | Joker

cardValue :: Card -> Integer
cardValue (Card (N x) _) = x
cardValue (Card Ace _) = 20
cardValue (Card (M x) _) = 10
cardValue Joker = 30

sameVal :: Card -> Card -> Bool
sameVal (Card v1 _) (Card v2 _) = v1 == v2
sameVal _ _ = False

consecutive :: Card -> Card -> Bool
consecutive (Card (N x) _) (Card (N y) _) = x + 1 == y
consecutive (Card (N 10) _) (Card (M J) _) = True
consecutive (Card (M J) _) (Card (M Q) _) = True
consecutive (Card (M Q) _) (Card (M K) _) = True
consecutive (Card (M K) _) (Card Ace _) = True
consecutive (Card Ace _) (Card (N 2) _) = True

toak :: Card -> Card -> Card -> Bool
toak Joker Joker _ = False
toak Joker _ Joker = False
toak _ Joker Joker = False
toak Joker c1 c2 = sameVal c1 c2
toak c1 Joker c2 = sameVal c1 c2
toak c1 c2 Joker = sameVal c1 c2
toak c1 c2 c3 = sameVal c1 c2 && sameVal c2 c3


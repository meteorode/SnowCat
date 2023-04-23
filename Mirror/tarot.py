# tarot.py

# First, We'll define the Tarot deck.

import random

Major_Arcana = ['The Fool', 'The Magician', 'The HighPriestess', 'The Empress', 'The Emperor', 'The Hierophant', 'The Lovers', 'The Chariot', 'Strength',
'The Hermit', 'Wheel of Fortune', 'Justice', 'The Hanged Man', 'Death', 'Temperance', 'The Devil', 'The Tower', 'The Star', 'The Moon', 'The Sun', 'Judgement',
'The World' ]

Minor_Arcana_Colors = ['Wands', 'Cups', 'Swords', 'Pentacles']
Minor_Aracana_Numbers = ['Ace', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Night', 'Ten', 'Page', 'Knight', 'Queen', 'King']

def compile_deck(colors, numbers):
    deck = []
    for c in colors:
        for n in numbers:
            card = n + ' of ' + c
            deck.append(card)
    # print(deck)
    return deck

Minor_Arcana = compile_deck(Minor_Arcana_Colors, Minor_Aracana_Numbers)

Tarot_Deck = Major_Arcana + Minor_Arcana    # A complete deck.

def choose_your_fate(name, deck): # You're your choices.
    seed = random.randint(1, len(name)+1)
    if seed // 2:
        vice_versa = 0  # Upright
    else:
        vice_versa = 1  # Vice versa.
    #deck = random.shuffle(deck)
    card = random.choice(deck)
    if (vice_versa == 0):
        print(card + ', ' + 'Upright')
    else:
        print(card + ',' + 'Reversed')
    return

choose_your_fate('Someboy', Tarot_Deck)
